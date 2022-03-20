package Equipment.SuppliesObjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public class Supplies {
    public void Menu() throws IOException {
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
                    case 'a': ProductSupplier(conn);
                        break;
                    case 'b':CleaningSuppliesAlert(conn);
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
        System.out.println("                       Supplies                            \n");
        System.out.println("___________________________________________________________\n");
        System.out.println("                (a) Product Suppliers                      \n");
        System.out.println("                (b) Cleaning Supplies Alert                \n");
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

    public static void ProductSupplier(Connection conn) throws SQLException, IOException {
        Statement stmt = conn.createStatement();

        String query = "select Supplier.FullName as SupplierName," +  
                       "Cleaning_supplies.name as CleaningSupplyProduct," + 
                       "Equipment.EquipmentName as EquipmentProduct " + 
                       "from Supplier, Cleaning_supplies, Equipment " +
                       "where Cleaning_supplies.Supplier_ID_Number = Supplier.ID_Number " +
                       "or Equipment.Supplier_ID_Number = Supplier.ID_Number " + 
                       "order by Supplier.FullName"
        ;
        ResultSet rset;
        rset = stmt.executeQuery(query);
        
         System.out.print("he products each supplier provides are like following" + '\n');
         System.out.println("--------------------------------------------------\n");
         System.out.print("SupplierName");
         System.out.print(" ");
         System.out.print("CleanSupplyProduct");
         System.out.print(" ");
         System.out.print("EquipProduct\n");
         while ( rset.next()){
            System.out.print(rset.getString(1) + '\t' + '\t');
            for (int k = 0; k < 20 - rset.getString(1).length(); k++) {
                System.out.print(" ");
            }
            System.out.print(rset.getString(2) + '\t');
            for (int k = 0; k < 20 - rset.getString(2).length(); k++) {
                System.out.print(" ");
            }
            System.out.print(rset.getString(3) + "\n");
         }   
         System.out.println("--------------------------------------------------\n");

         stmt.close();

    }

    public static void CleaningSuppliesAlert(Connection conn) throws SQLException, IOException {
        Statement stmt = conn.createStatement();

        String query = "select Cleaning_supplies.name " +
                       "from Cleaning_supplies " +
                       "where Current_inventory < safety_stock"
        ;
        ResultSet rset;
        rset = stmt.executeQuery(query);
    
         System.out.print("CleaningSupplyProduct Under Stack" + '\n');
       
         while ( rset.next()){
            System.out.print(rset.getString(1) + '\n');

         }   
         System.out.println("--------------------------------------------------\n");

         stmt.close();
    }
}
