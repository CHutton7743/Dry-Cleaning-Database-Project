package UpdatesObjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class Update {
    public void Menu() {
        Connection conn = null;
        boolean answer = false;
        final String dbuser = "root";
        final String dbpassword = "bravoplatoon543";
        final String dbschema = "Clean_And_Go";
    
        String url = ("jdbc:mysql://clean-and-go-db.cv7szo5pxvof.us-west-2.rds.amazonaws.com:3306/");
        url += dbschema + "?user=" + dbuser + "&password=" + dbpassword;
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, dbuser, dbpassword);
            do {
                printMenu();
                System.out.print("Type in your option: ");
                System.out.flush();
                String ch = readLine();
                System.out.println();
                switch (ch.charAt(0)) {
                    case 'a': AddNewEquipment(conn);
                        break;
                    case 'b': // fill in methods here  delete.methodhere();
                        break;
                    case 'c': // fill in methods here
                        break;
                    case 'd': // fill in methods here
                        break;
                    case 'r': answer = true;
                        break;
                    default:
                        System.out.println(" Not a valid option ");
                } //switch
            } while (answer == false);
            

        } catch (ClassNotFoundException e) {
            System.out.println("Could not load the driver");
        }catch (SQLException ex) {
            System.out.println(ex);
        }  finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    System.out.println(e);
                }
            }
        }
      
    }
    private void printMenu() {
        System.out.println("___________________________________________________________\n");
        System.out.println("               Welcome to Clean-and-Go Shop                \n");
        System.out.println("                    Update Information                     \n");
        System.out.println("___________________________________________________________\n");
        System.out.println("                (a) Add new equipment                      \n");
        System.out.println("                (b) Add new service                        \n");
        System.out.println("                (c) Add new customer information           \n");
        System.out.println("                (d) Add new employee information           \n");
        System.out.println("                (r) Return to update menu                  \n");
        System.out.println("___________________________________________________________\n");
    } 
    private String readLine() {
        InputStreamReader isr = new InputStreamReader(System.in);
        BufferedReader br = new BufferedReader(isr, 1);
        String line = "";

        try {
            line = br.readLine();
        } catch (IOException e) {
            System.out.println("Error in SimpleIO.readLine: " +
                    "IOException was thrown");
            System.exit(1);
        }
        return line;
    }  

    private static void AddNewEquipment(Connection conn) throws SQLException{
        Statement stmt = conn.createStatement();

        String query = "insert into equipment " +
                       "values ('8', 'TCL', '2021-04-18', 3439.25," + 
                       "'washer', \"first Thursday of third quarter\", '4', '5', 312.56)"
        ;

        stmt.executeQuery(query);
         System.out.println("    New Equipment is Added");
         System.out.println("--------------------------------------------------\n");

    }
}
