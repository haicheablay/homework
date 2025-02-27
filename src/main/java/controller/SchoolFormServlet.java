package controller;
import dao.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

import java.io.IOException;

@WebServlet("/SchoolFormServlet")
public class SchoolFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String birthday = request.getParameter("birthday");
            boolean newStudent = "yes".equals(request.getParameter("new_student"));
            String college = request.getParameter("college");
            String major = request.getParameter("major");
            String color = request.getParameter("color");
            boolean terms = "on".equals(request.getParameter("terms"));

            if (email == null || password == null || birthday == null || college == null || major == null || color == null) {
                throw new ServletException("Missing form data");
            }

            User user = new User();
            user.setEmail(email);
            user.setPassword(password);
            user.setBirthday(birthday);
            user.setNewStudent(newStudent);
            user.setCollege(college);
            user.setMajor(major);
            user.setColor(color);
            user.setTerms(terms);

            userDAO.insertUser(user);

            request.setAttribute("user", user);
            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "An error occurred: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}