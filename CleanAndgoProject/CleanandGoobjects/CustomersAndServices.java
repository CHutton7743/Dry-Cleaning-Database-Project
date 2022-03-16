package CleanandGoobjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

// import CustomerServicesObjects.CustomerDelete;
// import CustomerServicesObjects.CustomerInsert;
// import CustomerServicesObjects.CustomerUpdate;

public class CustomersAndServices {

    private void printMenu() {
        System.out.println("___________________________________________________________\n");
        System.out.println("               Welcome to Clean-and-Go Shop                \n");
        System.out.println("                  Customer and Services                    \n");
        System.out.println("___________________________________________________________\n");
        System.out.println("                (a) Insert information                     \n");
        System.out.println("                (b) Delete information                     \n");
        System.out.println("                (c) Update information                     \n");
        System.out.println("                (r) Return to main Menu                    \n");
        System.out.println("___________________________________________________________\n");
    }
    public void menuDriver() {
        // CustomerInsert insert = new CustomerInsert();
        // CustomerDelete delete = new CustomerDelete();
        // CustomerUpdate update = new CustomerUpdate();

        boolean answer = false;
        do {
            printMenu();
            System.out.print("Type in your option: ");
            System.out.flush();
            String ch = readLine();
            System.out.println();
            switch (ch.charAt(0)) {
                case 'a': // fill in methods here  insert.methodhere();
                    break;
                case 'b': // fill in methods here  delete.methodhere();
                    break;
                case 'c': // fill in methods here  update.methodhere();
                    break;
                case 'r': answer = true;
                    break;
                default:
                    System.out.println(" Not a valid option ");
            } //switch
        } while (answer == false);
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
}
