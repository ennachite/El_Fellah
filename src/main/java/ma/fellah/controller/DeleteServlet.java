package ma.fellah.controller;

import ma.fellah.dao.PostDaoImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Delete", value = "/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        PostDaoImpl postDao = new PostDaoImpl();

        postDao.deletePost(id);

        response.sendRedirect("/home");
    }
}
