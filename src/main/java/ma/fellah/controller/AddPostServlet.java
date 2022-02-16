package ma.fellah.controller;

import ma.fellah.dao.PostDaoImpl;
import ma.fellah.extra.HomePath;
import ma.fellah.model.Post;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@MultipartConfig
@WebServlet(name = "AddPost", value = "/add-post")
public class AddPostServlet extends HttpServlet {
    protected static String extractFileName(Part part) {
        String contentDispo = part.getHeader("content-disposition");
        String[] items = contentDispo.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("addOffer.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String offerName = request.getParameter("offerName");
        String description = request.getParameter("description");
        String ownerName = request.getParameter("ownerName");
        String phone = request.getParameter("phone");
        int area = Integer.parseInt((request.getParameter("surface")));
        int price = Integer.parseInt((request.getParameter("price")));
        String location = request.getParameter("location");
        Part picture = request.getPart("picture");

        PostDaoImpl postDao = new PostDaoImpl();
        Post post = new Post();

        post.setOfferName(offerName);
        post.setOwnerName(ownerName);
        post.setDescription(description);
        post.setPhone(phone);
        post.setArea(area);
        post.setPrice(price);
        post.setLocation(location);

        if (picture != null) {
            String pictureFileName = extractFileName(picture);
            String extension = pictureFileName.substring(pictureFileName.lastIndexOf("."));
            //Add home path
            String savePath = HomePath.HOMEPATH + File.separator + post.getOfferName() + post.getOwnerName() + extension;

            File saveDir = new File(savePath);
            picture.write(savePath + File.separator);

            savePath = savePath.replace("\\", "/");
            savePath = savePath.substring(savePath.lastIndexOf("fellah"));
            post.setPicture(savePath);
        }

        int status = postDao.addPost(post);

        if (status == -1) {
            request.setAttribute("error", "Connection Error");
            request.getRequestDispatcher("addOffer.jsp").forward(request, response);
        } else {
            response.sendRedirect("/home");
        }
    }
}
