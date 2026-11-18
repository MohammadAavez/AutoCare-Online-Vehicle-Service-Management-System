package AutoCareX;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/confirmBooking")
public class ConfirmBookingS extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String mobile = req.getParameter("mobile");
        String service = req.getParameter("service");
        String vehicle = req.getParameter("vehicle_model");
        String date = req.getParameter("booking_date");
        String address = req.getParameter("address");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/autocare?user=root&&password=Razvi@786");

            PreparedStatement ps = con.prepareStatement(
                "Insert into bookedservices(name, mobile_no, service_name, vehicle_model, booking_date, address) VALUES(?,?,?,?,?,?)"
            );

            ps.setString(1, name);
            ps.setString(2, mobile);
            ps.setString(3, service);
            ps.setString(4, vehicle);
            ps.setString(5, date);
            ps.setString(6, address);

            int result = ps.executeUpdate();

            if (result > 0) {
//            resp.getWriter().println("Booking Successfully Confirmed!");
            	
            	  resp.sendRedirect("profile");
            }

            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().println(e.getMessage());
        }
    }
}