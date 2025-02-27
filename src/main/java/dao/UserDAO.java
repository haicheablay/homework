package dao;

import model.User;
import java.sql.*;
import org.mindrot.jbcrypt.BCrypt; // Import BCrypt for password hashing

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/school_db";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String INSERT_USER_SQL = "INSERT INTO users (email, password, birthday, new_student, college, major, color, terms) VALUES (?, ?, ?, ?, ?, ?, ?, ?);";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public void insertUser(User user) {
        String hashedPassword = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, hashedPassword); // Store hashed password
            preparedStatement.setString(3, user.getBirthday());
            preparedStatement.setBoolean(4, user.isNewStudent());
            preparedStatement.setString(5, user.getCollege());
            preparedStatement.setString(6, user.getMajor());
            preparedStatement.setString(7, user.getColor());
            preparedStatement.setBoolean(8, user.isTerms());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}