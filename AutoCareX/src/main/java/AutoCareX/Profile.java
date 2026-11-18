package AutoCareX;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Profile extends HttpServlet {

    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException {
            
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("email") == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        String email = (String) session.getAttribute("email");

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/autocare?user=root&&password=Razvi@786");

            // Customer Details

            PreparedStatement ps = con.prepareStatement("SELECT * FROM customer WHERE email=?");
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {

                String name = rs.getString("name");
                String mobile = rs.getString("mobile_no");

                request.setAttribute("name", name);
                request.setAttribute("mobile", mobile);
                request.setAttribute("email", email);

                // Booked Services

                PreparedStatement ps2 = con.prepareStatement("SELECT * FROM bookedservices WHERE mobile_no=?");
                ps2.setString(1, mobile);

                ResultSet rs2 = ps2.executeQuery();

                request.setAttribute("bookings", rs2);

                request.getRequestDispatcher("MyProfile.jsp")
                       .forward(request, response);
             
            } 
            else {
                rs.close();
                ps.close();
                con.close();

                response.sendRedirect("Login.jsp");
                return;
            }

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}