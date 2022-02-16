package ma.fellah.controller;

import ma.fellah.dao.PostDaoImpl;
import ma.fellah.model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PostDaoImpl postDao = new PostDaoImpl();

        List<Post> posts = postDao.allPosts();

        request.setAttribute("posts", posts);

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
