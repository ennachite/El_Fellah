package ma.fellah.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddPost", value = "/add-post")
public class AddPostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String offerName = request.getParameter("offerName");
        String description = request.getParameter("description");
        String ownerName = request.getParameter("ownerName");
        String phone = request.getParameter("phone");
        float area = Float.parseFloat(request.getParameter("area"));
        float price = Float.parseFloat(request.getParameter("price"));
        String location = request.getParameter("location");
        Part picture = request.getPart("picture");


    }
}
