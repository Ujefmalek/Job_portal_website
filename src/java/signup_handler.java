import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class signup_handler extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","");
            PreparedStatement ps=con.prepareStatement("select * from users");
            ResultSet rs=ps.executeQuery();
            String pass=request.getParameter("pass");
             String name=request.getParameter("fn");
              String email=request.getParameter("email");
               String address=request.getParameter("address");
               String city=request.getParameter("city");
               String zip=request.getParameter("zip");
            int flag=1;
            while(rs.next())
            {
                if(rs.getString("email").equals(email))
                    flag=0;
            }
            if(flag==1)
            {
                PreparedStatement p=con.prepareStatement("Insert into `users`(`email`, `password`, `name`, `address`, `city`, `zip`) values(?,?,?,?,?,?)");
                p.setString(1, email);
                p.setString(2, pass);
                p.setString(3, name);
                p.setString(4, address);
                p.setString(5, city);
                p.setString(6, zip);
                HttpSession s=request.getSession();
                int x=0;
                s.setAttribute("email", email);
                s.setAttribute("usertype", x);
                p.executeUpdate();
                request.getRequestDispatcher("home.jsp").forward(request, response);
            }
            else
            {
                out.print("<html><body><script> alert('User Already Exists') </script></body></html>");
            }
        }
        catch(Exception e)
        {
            out.print(e);
        }
    }
}
