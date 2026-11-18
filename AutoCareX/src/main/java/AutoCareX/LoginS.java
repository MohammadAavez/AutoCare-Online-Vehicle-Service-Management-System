package AutoCareX;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginS extends HttpServlet{

	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
		
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		PrintWriter pw=resp.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver Class Login");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/autocare?user=root&&password=Razvi@786");
			
			PreparedStatement ps=con.prepareStatement("select * from customer where email=? AND password=?");
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				
				HttpSession session=req.getSession();
				session.setAttribute("email",email);
				
				resp.sendRedirect("Home.jsp");
			}else {
				pw.println("<h1>Failed to Login!</h1> <br>"
						+ "<a href='Login.html'>try again</a>");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
		
			e.printStackTrace();
		}
	}
}
