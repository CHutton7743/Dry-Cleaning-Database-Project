package CleanandGoobjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;


public class Employees {
    private void printMenu() {
        System.out.println("___________________________________________________________\n");
        System.out.println("               Welcome to Clean-and-Go Shop                \n");
        System.out.println("                     (a) Employee Schedule                 \n");
        System.out.println("                     (r) Return to Main Menu               \n");
        System.out.println("___________________________________________________________\n");
    }

    public void menuDriver() throws IOException {
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
                    case 'a': EmployeeSchedule(conn);
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

    static String readLine() {
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

    public static void EmployeeSchedule(Connection conn) throws SQLException, IOException {
        
        System.out.print("Type an Employee ID Number: ");
        System.out.flush();
        String ch = readLine();
        Statement stmt = conn.createStatement();
        String query = "select Employee.ID_Number, " +
                       "Employee.name, employee_schedule.date, " +
                       "employee_schedule.schedule_description " +
                       "from Employee, employee_schedule " +
                       "where Employee.ID_Number = employee_schedule.Employee_ID_Number " + 
                       "and employee_schedule.date >= '2021-11-23' " +
                       "and employee_schedule.date <= '2021-11-30' " +
                       "and employee_schedule.Employee_ID_Number = " + ch + " " +
                       "order by employee_schedule.date";

        ResultSet rset;
        rset = stmt.executeQuery(query);

        System.out.print("EmployeeID" + '\t');
         System.out.print("Name" + '\t');
         System.out.print("Date" + '\t');
         System.out.print("Schedule" + '\n');

         while (rset.next()) {
            System.out.print(rset.getString(1) + '\t');
            System.out.print(rset.getString(2) + '\t');
            System.out.print(rset.getString(3) + '\t');
            System.out.print(rset.getString(4) + '\t' + '\n');
         }
    }
}
