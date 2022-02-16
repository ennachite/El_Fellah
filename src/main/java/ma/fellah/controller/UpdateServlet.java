package ma.fellah.controller;

import ma.fellah.dao.PostDaoImpl;
import ma.fellah.model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Update", value = "/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int offerId = Integer.parseInt(request.getParameter("offerId"));

        PostDaoImpl postDao = new PostDaoImpl();
        Post post = postDao.getPostById(offerId);

        request.setAttribute("post", post);

        request.getRequestDispatcher("modify.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int offerId = Integer.parseInt(request.getParameter("offerId"));
        String offerName = request.getParameter("offerName");
        String ownerName = request.getParameter("ownerName");
        String phone = request.getParameter("phone");
        int area = Integer.parseInt((request.getParameter("surface")));
        int price = Integer.parseInt((request.getParameter("price")));
        String location = request.getParameter("location");
        String description = request.getParameter("description");

        PostDaoImpl postDao = new PostDaoImpl();
        Post post = new Post();

        post.setId(offerId);
        post.setOfferName(offerName);
        post.setOwnerName(ownerName);
        post.setDescription(description);
        post.setPhone(phone);
        post.setArea(area);
        post.setPrice(price);
        post.setLocation(location);

        int status = postDao.updatePost(post);

        if (status == -1) {
            request.setAttribute("error", "Connection Error");
            request.getRequestDispatcher("modify.jsp").forward(request, response);
        } else {
            response.sendRedirect("/home");
        }
    }
}
