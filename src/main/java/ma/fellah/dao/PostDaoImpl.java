package ma.fellah.dao;

import ma.fellah.extra.DAOFactory;
import ma.fellah.model.Post;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PostDaoImpl implements PostDao {
    private final Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    public PostDaoImpl() {
        connection = DAOFactory.getConnected();
    }

    @Override
    public int addPost(Post post) {
        try {
            preparedStatement = connection.prepareStatement("INSERT INTO posts (offer_name, description, owner_name, phone, " +
                    "area, price, location, pic_url) VALUES (?,?,?,?,?,?,?,?)");
            putAttributes(post);
            preparedStatement.setString(8, post.getPicture());

            if (preparedStatement.executeUpdate() > 0) {
                return 1;
            } else {
                return 0;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;
    }

    private void putAttributes(Post post) throws SQLException {
        preparedStatement.setString(1, post.getOfferName());
        preparedStatement.setString(2, post.getDescription());
        preparedStatement.setString(3, post.getOwnerName());
        preparedStatement.setString(4, post.getPhone());
        preparedStatement.setInt(5, post.getArea());
        preparedStatement.setInt(6, post.getPrice());
        preparedStatement.setString(7, post.getLocation());
    }

    @Override
    public int updatePost(Post post) {
        try {
            preparedStatement = connection.prepareStatement("UPDATE posts SET offer_name=?, description=?, owner_name=?," +
                    "phone=?, area=?, price=?, location=? WHERE id=?");
            putAttributes(post);
            preparedStatement.setInt(8, post.getId());

            if (preparedStatement.executeUpdate() > 0) {
                return 1;
            } else {
                return 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return -1;
    }

    @Override
    public void deletePost(int id) {
        try {
            preparedStatement = connection.prepareStatement("DELETE FROM posts WHERE id=?");
            preparedStatement.setInt(1, id);

            if (preparedStatement.executeUpdate() > 0) {
            } else {
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public Post getPostById(int id) {
        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM posts WHERE id=?");
            preparedStatement.setInt(1, id);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return getPost();
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Post> allPosts() {
        List<Post> posts = new ArrayList<>();

        try {
            preparedStatement = connection.prepareStatement("SELECT * FROM posts");

            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Post post = getPost();
                posts.add(post);
            }
            return posts;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    private Post getPost() throws SQLException {
        Post post = new Post();

        post.setId(resultSet.getInt("id"));
        post.setOfferName(resultSet.getString("offer_name"));
        post.setDescription(resultSet.getString("description"));
        post.setOwnerName(resultSet.getString("owner_name"));
        post.setPhone(resultSet.getString("phone"));
        post.setArea(resultSet.getInt("area"));
        post.setPrice(resultSet.getInt("price"));
        post.setLocation(resultSet.getString("location"));
        post.setDate(String.valueOf(resultSet.getDate("creation_date")));
        post.setPicture(resultSet.getString("pic_url"));

        return post;
    }
}
