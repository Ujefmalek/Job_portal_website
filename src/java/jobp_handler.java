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

public class jobp_handler extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test2","root","");
            PreparedStatement ps=con.prepareStatement("select * from jp_users");
            ResultSet rs=ps.executeQuery();
            String pass=request.getParameter("pass");
             String name=request.getParameter("fn");
              String email=request.getParameter("email");
               String cn=request.getParameter("cn");
               String cw=request.getParameter("cw");
               String bpn=request.getParameter("bpn");
            int flag=1;
            while(rs.next())
            {
                if(rs.getString("email").equals(email))
                    flag=0;
            }
            if(flag==1)
            {
                PreparedStatement p=con.prepareStatement("Insert into jp_users values(?,?,?,?,?,?)");
                p.setString(1, email);
                p.setString(2, name);
                p.setString(3, pass);
                p.setString(4, cn);
                p.setString(5, cw);
                p.setString(6, bpn);
                int n=p.executeUpdate();
                request.getRequestDispatcher("index.html").forward(request, response);
            }
            else
            {
                out.print("<html><body><script> alert('Provider Already Exists') </script></body></html>");
            }
        }
        catch(Exception e)
        {
            out.print(e);
        }
    }
}
