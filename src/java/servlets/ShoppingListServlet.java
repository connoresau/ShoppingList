package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        request.setAttribute("username", username);
        if (username == null || username.equals("")) {
            session.invalidate();
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }
        
        String action = request.getParameter("action");
        if (action != null && action.equals("logout")) {
            session.invalidate();
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }
        
        ArrayList<String> items = (ArrayList<String>)session.getAttribute("items");
        if (items != null) {
            request.setAttribute("items", items);
        }
        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String action = request.getParameter("action");
        if (action.equals("add")) {
            ArrayList<String> items = (ArrayList<String>)session.getAttribute("items");
            if (items == null) {
                items = new ArrayList<>();
            }
            
            items.add(request.getParameter("itemToAdd"));
            request.setAttribute("items", items);
            session.setAttribute("items", items);
        } else if (action.equals("delete")) {
            ArrayList<String> items = (ArrayList<String>)session.getAttribute("items");
            if (items == null) {
                items = new ArrayList<>();
            }
            
            String itemToDelete = request.getParameter("itemRadioBtns");
            items.remove(itemToDelete);
            
            request.setAttribute("items", items);
            session.setAttribute("items", items);
        } else if (action.equals("register")) {
            String username = request.getParameter("usernameInput");
            session.setAttribute("username", username);
        }
        response.sendRedirect("ShoppingList");
    }
}
