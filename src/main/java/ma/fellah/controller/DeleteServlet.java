package ma.fellah.controller;

import ma.fellah.dao.PostDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
