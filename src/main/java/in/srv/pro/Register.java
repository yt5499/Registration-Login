package in.srv.pro;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/regform")
public class Register extends HttpServlet {
	@Override
//	you can even use service()
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();

		String firstname = req.getParameter("fname");
		String lastname = req.getParameter("lname");
		String email = req.getParameter("email");
		String password = req.getParameter("pass");
		String city = req.getParameter("city");
		String gender = req.getParameter("gender");

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reglog", "root", "root");

			PreparedStatement stmt = conn
					.prepareStatement("insert into registrations(fname,lname,email,password,city,gender) values(?,?,?,?,?,?);");

			stmt.setString(1, firstname);
			stmt.setString(2, lastname);
			stmt.setString(3, email);
			stmt.setString(4, password);
			stmt.setString(5, city);
			stmt.setString(6, gender);

			int count = stmt.executeUpdate();
			if (count > 0) {
				resp.setContentType("text/html");
				out.println("User registered successfully");
				RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
				rd.include(req, resp);
			} else {
				resp.setContentType("text/html");
				out.println("User not registered! try again");
				RequestDispatcher rd = req.getRequestDispatcher("/register.jsp");
				rd.include(req, resp);
			}

//			if(conn!=null) {
//				out.println("Success");
//			}else {
//				out.println("Try again");
//			}
		} catch (Exception e) {
			out.println(e.getMessage());
		}

	}
}
