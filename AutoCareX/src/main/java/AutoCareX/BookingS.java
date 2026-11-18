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

public class BookingS extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String service = req.getParameter("service");
        HttpSession session = req.getSession(false);

        if (session == null || session.getAttribute("email") == null) {
            resp.sendRedirect("Login.jsp");
            return;
        }

        String email = (String) session.getAttribute("email");

        try {
        	
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/autocare?user=root&&password=Razvi@786");

            PreparedStatement ps = con.prepareStatement("select name, mobile_no from customer WHERE email = ?");
            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                String name = rs.getString("name");
                String mobile = rs.getString("mobile_no");

                req.setAttribute("name", name);
                req.setAttribute("mobile", mobile);
                req.setAttribute("service", service);

                req.getRequestDispatcher("Booking.jsp")
                   .forward(req, resp);

            } else {
                resp.sendRedirect("Login.jsp");
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println(e.getMessage());
        }
    }
}
