package ma.fellah.dao;

import ma.fellah.model.Post;

import java.util.List;

public interface PostDao {
    int addPost(Post post);

    int updatePost(Post post);

    void deletePost(int id);

    Post getPostById(int id);

    List<Post> allPosts();
}
