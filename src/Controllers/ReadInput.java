package Controllers;

import Database.EnterDetailInDatabase;
import Model.UserDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "ReadInput")
public class ReadInput extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            UserDetails d = new UserDetails();
            String firstname = request.getParameter("firstname");
            d.setFirstname(firstname);
            String lastname = request.getParameter("lastname");
            d.setLastname(lastname);
            String emailid = request.getParameter("emailid");
            d.setEmailid(emailid);
            String contact = request.getParameter("contact");
            d.setContact(contact);
            String[] interests = request.getParameterValues("interests");
            d.setInterests(interests);
            String visitdate = request.getParameter("visitdate");
            d.setVisitdate(visitdate);
            String roomno = request.getParameter("roomno");
            d.setRoomno(roomno);
            String memberno = request.getParameter("memberno");
            d.setMemberno(memberno);
            EnterDetailInDatabase ed = new EnterDetailInDatabase();
            int i = ed.insertInDatabase(d);
            if (i > 0) {
                System.out.println("Inside success");
                request.setAttribute("Success", d);
                request.getRequestDispatcher("Insertsuccess.jsp").forward(request, response);
            } else {
                System.out.println("Inside fail after inserting");
                request.setAttribute("Fail", d);
                request.getRequestDispatcher("Insertfail.jsp").forward(request, response);
            }
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
