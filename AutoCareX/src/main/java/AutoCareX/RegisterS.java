package AutoCareX;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterS extends HttpServlet {

	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
		
		String name=req.getParameter("name");
		String mobile=req.getParameter("number");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String confirmPassword=req.getParameter("confirmPassword");
		
		PrintWriter pw=resp.getWriter();
		if(password.equals(confirmPassword)) {
			
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				System.out.println("Driver Class Loaded");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/autocare?user=root&&password=Razvi@786");
				System.out.println("Connection Established");
				
				System.out.println("Registerd");
				
				PreparedStatement ps=con.prepareStatement
						("insert into customer(name,mobile_no,email,password) values(?,?,?,?)");
				
				ps.setString(1,name);
				ps.setString(2, mobile);
				ps.setString(3,email);
				ps.setString(4, password);
				
				int res=ps.executeUpdate();
				
				if(res>0) {
					
					resp.sendRedirect("Login.jsp");
					
				}else {
					
					
					pw.println("<html><body><h1>Not Registed</h1></body></html>");
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				
				e.printStackTrace();
			}
		}else {
			
			pw.println("<html><body><h1>Eror: Password MisMatch!</h1>"
					+ "<a href='Register.html'>try again!</body></html>");

		}
		
	}
}
