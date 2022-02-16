package ma.fellah.controller;

import ma.fellah.dao.PostDaoImpl;
import ma.fellah.model.Post;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Details", value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        PostDaoImpl postDao = new PostDaoImpl();

        Post post = postDao.getPostById(id);

        request.setAttribute("post", post);

        request.getRequestDispatcher("details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
