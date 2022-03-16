package UpdatesObjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class UpdateInsert {
    public void Menu() throws IOException {
        Connection conn = null;
        boolean answer = false;
        
        try {
           
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/clean_and_go?serverTimezone=UTC&useSSL=TRUE";
            String user, pass;
            user = readEntry("userid : ");
            pass = readEntry("password: ");
            conn = DriverManager.getConnection(url, user, pass);
            do {
                printMenu();
                System.out.print("Type in your option: ");
                System.out.flush();
                String ch = readLine();
                System.out.println();
                switch (ch.charAt(0)) {
                    case 'a': AddNewEquipment(conn);
                        break;
                    case 'b': AddNewService(conn);
                        break;
                    case 'c': AddNewCustomer(conn);
                        break;
                    case 'd': AddNewEmployee(conn);
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
        System.out.println("                     Insert Information                    \n");
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
    

    public static void AddNewEquipment(Connection conn) throws SQLException, IOException{
        Statement stmt = conn.createStatement();

        String query = "insert into equipment " +
                       "values ('8', 'TCL', '2021-04-18', 3439.25," + 
                       "'washer', \"first Thursday of third quarter\", '4', '5', 312.56)"
        ;

        stmt.executeUpdate(query);
         System.out.println("    New Equipment is Added");
         System.out.println("--------------------------------------------------\n");
         stmt.close();

    }

    public static void AddNewService(Connection conn) throws SQLException, IOException{
        Statement stmt = conn.createStatement();

        String query = "insert into Service " +
                       "values ('9', 'Iron using','make  the clothes flat', 25, 1)"
        ;

        stmt.executeUpdate(query);
         System.out.println("    New Service is Added");
         System.out.println("--------------------------------------------------\n");
         stmt.close();

    }

    public static void AddNewCustomer(Connection conn) throws SQLException, IOException{
        Statement stmt = conn.createStatement();

        String query = "insert into Customer " +
                       "values ('11', '8th NE Ave', 'Bellevue Street', 'Redmond'," + 
                       "'WA','98052', 'johnny1314@gmail.com', '2069202849', '2010 3421 2973 7538', 84.7)"
        ;

        stmt.executeUpdate(query);
         System.out.println("    New Customer is Added");
         System.out.println("--------------------------------------------------\n");
         stmt.close();

    }

    public static void AddNewEmployee(Connection conn) throws SQLException, IOException{
        Statement stmt = conn.createStatement();

        String query = "insert into Employee " +
                       "values ('11', 'Cypress Taing', '156 8th NE Ave, Bellevue WA 98008'," + 
                       "'Female', '2019-03-11', 'Worker', 18, 'Monday to Friday, 8am to 16pm')"
        ;
        stmt.executeUpdate(query);
         System.out.println("    New Employee is Added");
         System.out.println("--------------------------------------------------\n");
         stmt.close();

    }

    static String readEntry(String prompt) {
        try {
            StringBuffer buffer = new StringBuffer();
            System.out.print(prompt);
            System.out.flush();
            int c = System.in.read();
            while(c != '\n' && c != -1) {
                buffer.append((char)c);
                c = System.in.read();
            }
            return buffer.toString().trim();
        } catch (IOException e) {
            return "";
        }
    }
}
