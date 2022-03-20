package Equipment.SuppliesObjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class Equipment {
    public void Menu() throws IOException{
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
                    case 'a': TotalNumberOfEquipment(conn);
                        break;
                    case 'b': MaintenanceSchedule(conn);
                        break;
                    case 'c': AverageMonthlyUsage(conn);
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
        System.out.println("                       Equipment                           \n");
        System.out.println("___________________________________________________________\n");
        System.out.println("                (a) Total Number of Equipment              \n");
        System.out.println("                (b) Maintenence Schedule                   \n");
        System.out.println("                (c) Average Monthly Usage                  \n");
        System.out.println("                (r) Return to Equpment and Supplies Menu   \n");
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

    public static void TotalNumberOfEquipment(Connection conn) throws SQLException, IOException {
        Statement stmt = conn.createStatement();

        String query = "select count(*) as TotalNumberOfEquipment " +
                       "from Equipment "
        ;
        ResultSet rset;
        rset = stmt.executeQuery(query);
         System.out.print("    The Total Number of Equipment is ");
         while (rset.next()){
             System.out.println(rset.getInt(1));
         }

         stmt.close();

    }
 

    public static void MaintenanceSchedule(Connection conn) throws SQLException, IOException {
        Statement stmt = conn.createStatement();

        String query = "select Equipment.ID_Number, " +
                       "Equipment.EquipmentName, " + 
                       "equipment_maintenence_Schedule.date, " +
                       "equipment_maintenence_Schedule.description " +
                       "from equipment_maintenence_Schedule, Equipment " +
                       "where Equipment.ID_Number = equipment_maintenence_Schedule.Equipment_ID_Number " + 
                       "and equipment_maintenence_Schedule.date >= '2021-04-01'" +
                       "and equipment_maintenence_Schedule.date <= '2021-04-08'"
        ;
        ResultSet rset;
        rset = stmt.executeQuery(query);
         System.out.print("    The Equipment Maintenence Schedule for the first week of April " + '\n');
         System.out.print("EquipmentID" + "\t");
         System.out.print("EquipmentName" + "\t");
         System.out.print("Date" + "\t");
         System.out.print("Schedule" + "\n");
         while (rset.next()){
             System.out.print(rset.getString(1) + '\t');
             System.out.print(rset.getString(2) + '\t');
             System.out.print(rset.getString(3) + '\t');
             System.out.print(rset.getString(4) + '\t' + '\n');
         }

         stmt.close();

    }

    public static void AverageMonthlyUsage(Connection conn) throws SQLException, IOException {
        Statement stmt = conn.createStatement();

        String query = "select Equipment.ID_Number, " +
                       "Equipment.EquipmentName, avg(equipment_Schedule.hours) as AverageHours " +
                       "from Equipment, equipment_Schedule " +
                       "where Equipment.ID_Number = equipment_Schedule.Equipment_ID_Number " +
                       "group by equipment_Schedule.Equipment_ID_Number"
        ;
        ResultSet rset;
        rset = stmt.executeQuery(query);
         System.out.print("       The Average Daily Usage" + '\n');
         System.out.print("EquipmentID" + "\t");
         System.out.print("EquipmentName" + "\t");
         System.out.print("AverageHours" + "\n");
         while (rset.next()){
             System.out.print(rset.getString(1) + '\t');
             System.out.print(rset.getString(2) + '\t');
             System.out.println(rset.getDouble(3));
         }

         stmt.close();

    }


}
