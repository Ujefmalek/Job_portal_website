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

public class login_handler extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        int flag=1;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","");
            PreparedStatement ps=con.prepareStatement("select * from users");
            ResultSet rs=ps.executeQuery();
            String pass=request.getParameter("pass");
              String email=request.getParameter("email");
            while(rs.next())
            {
                if(rs.getString("email").equals(email))
                {
                    if(rs.getString("password").equals(pass))
                    {
                        flag=0;
                        HttpSession s=request.getSession();
                        s.setAttribute("email", email);
                        s.setAttribute("usertype", rs.getInt("user_type"));
                    }
                }
            }
    }
        catch(Exception e)
        {
            out.print(e);
        }
        
        if(flag==0)
        {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        }
        else
        {
            out.print("<html><body><script> alert('Wrong credentials') </script></body></html>");
        }
    }
}
