/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package network;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/Products")
@MultipartConfig(maxFileSize = 16177215)

public class Product extends HttpServlet{
    private String dbURL = "jdbc:mysql://localhost:3306/MedStoredata";
    private String dbUser = "root";
    private String dbPass = "root";
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        
        String t1=request.getParameter("text1");
        String t2=request.getParameter("text2");
        String t3=request.getParameter("text3");
        String t4=request.getParameter("text4");
        String t5=request.getParameter("text5");
        String t6=request.getParameter("text6");
        

       // System.out.println("User Recommend :" + gen + age + marital + edu + interest + content);
        InputStream inputStream = null;
        Part filePart = request.getPart("photo");
        if (filePart != null) {

            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());


            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        String message = null;

        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
       // System.out.println("User Recommend :" + gen + age + marital + edu + interest + content);

            String sql = "INSERT INTO ProductTab (Prodcode,prodName,details,category ,pimage,sprice ,remarks) values (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
           
            statement.setString(1, t1);
            statement.setString(2, t2);
            statement.setString(3, t3);
            statement.setString(4, t4);
            statement.setString(6, t5);
            statement.setString(7, t6);
           
            if (inputStream != null) {
                statement.setBlob(5, inputStream);
            }

            int row = statement.executeUpdate();
            if (row > 0) {

                System.out.println("image upload sucess");
                response.sendRedirect("adminproduct.jsp?msg=success");
            } else {
                response.sendRedirect("adminproduct.jsp?msg=Failed");

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}

