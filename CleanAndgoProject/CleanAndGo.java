import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.*;

import CleanandGoobjects.CustomersAndServices;
import CleanandGoobjects.Employees;
import CleanandGoobjects.EquipmentAndSupplies;
import CleanandGoobjects.Updates;


class CleanAndGo {
    public static void main(String[] args) throws IOException {
        CustomersAndServices customers = new CustomersAndServices();
        Employees employees = new Employees();
        EquipmentAndSupplies equipment = new EquipmentAndSupplies();
        Updates update = new Updates();
        Connection conn = null;
        final String dbuser = "root";
        final String dbpassword = "bravoplatoon543";
        final String dbschema = "Clean_And_Go";
    
        String url = ("jdbc:mysql://clean-and-go-db.cv7szo5pxvof.us-west-2.rds.amazonaws.com:3306/");
        url += dbschema + "?user=" + dbuser + "&password=" + dbpassword;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, dbuser, dbpassword);

            boolean answer = false;
            do {
                printMainMenu();
                System.out.print("Type in your option: ");
                System.out.flush();
                String ch = readLine();
                System.out.println();
                switch (ch.charAt(0)) {
                    case '1': equipment.menuDriver();
                        break;
                    case '2': customers.menuDriver();
                        break;
                    case '3': employees.menuDriver();
                        break;
                    case '4': update.menuDriver();
                        break;
                    case '5': answer = true;
                        break;
                    default:
                        System.out.println(" Not a valid option ");
                }
            } while (!answer); 

        } catch (ClassNotFoundException e) {
            System.out.println("Could not load the driver");
        } catch (SQLException ex) {
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
 

    private static String readLine() {
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


    
    public static void printMainMenu() {
        System.out.println("_____________________________________________________________________________\n");
        System.out.println("                             ____________                                    \n");
        System.out.println("                      Welcome to Clean-and-Go Shop                           \n");
        System.out.println("                             ____________                                    \n");
        System.out.println("_____________________________________________________________________________\n");
        System.out.println("                       (1) Equipment & Supplies                              \n");
        System.out.println("                       (2) Customers & Services                              \n");
        System.out.println("                       (3) Employees                                         \n");
        System.out.println("                       (4) Updates                                           \n");
        System.out.println("                       (5) Quit                                              \n");
        System.out.println("_____________________________________________________________________________\n");
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
