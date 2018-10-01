package Database;

import Model.UserDetails;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EnterDetailInDatabase {

    UserDetails d;
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/taxidio?useSSL=false";
    static final String USER = "root";
    static final String PASS = "desaiabhas7383";
    Connection conn = null;
    Statement stmt = null;

    private String interests;

    public int insertInDatabase(UserDetails d) throws ClassNotFoundException, SQLException {
        this.d = d;
        String ints = convertArrayToString(d.getInterests());
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(DB_URL, USER, PASS);
        stmt = conn.createStatement();
        String sql = "insert into user_details (firstname, lastname, emailid, contact, interests, visitdate, roomno"
                + ", memberno) VALUES (" + "'" + d.getFirstname() + "', '" + d.getLastname() + "', '" + d.getEmailid()
                + "', '" + d.getContact() + "', '" + ints + "', '" + d.getVisitdate() + "', '" + d.getRoomno()
                + "', '" + d.getMemberno() + "')";
        System.out.println("SQL is " + sql);
        int i = stmt.executeUpdate(sql);

        if (stmt != null) {
            conn.close();
        }
        return i;
    }

    public List<UserDetails> readValues() throws ClassNotFoundException, SQLException {
        UserDetails d = null;
        List<UserDetails> detailsList = new ArrayList<>();
        String firstname, lastname, emailid, contact, interest, visitdate, roomno, memberno = "";
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(DB_URL, USER, PASS);
        stmt = conn.createStatement();
        String sql = "select firstname, lastname, emailid, contact, interests, visitdate, roomno, memberno from user_details";
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            d = new UserDetails();
            firstname = rs.getString("firstname");
            d.setFirstname(firstname);
            lastname = rs.getString("lastname");
            d.setLastname(lastname);
            emailid = rs.getString("emailid");
            d.setEmailid(emailid);
            contact = rs.getString("contact");
            d.setContact(contact);
            interest = rs.getString("interests");
            d.setInts(interest);
            visitdate = rs.getString("visitdate");
            d.setVisitdate(visitdate);
            roomno = rs.getString("roomno");
            d.setRoomno(roomno);
            memberno = rs.getString("memberno");
            d.setMemberno(memberno);
            detailsList.add(d);
        }
        return detailsList;
    }

    private String convertArrayToString(String[] interests) {
        String ints = String.join(", ", interests);
        System.out.println("string: " + ints);
        this.setInterests(ints);
        return ints;
    }

    /**
     * @return the interests
     */
    public String getInterests() {
        return interests;
    }

    /**
     * @param interests the interests to set
     */
    public void setInterests(String interests) {
        d.setInts(interests);
    }


}
