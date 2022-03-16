package UpdatesObjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class UpdateDelete {
    public void Menu() {
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
                case 'c': // fill in methods here
                    break;
                case 'd': //fill in methods here
                    break;
                case 'r': answer = true;
                    break;
                default:
                    System.out.println(" Not a valid option ");
            } //switch
        } while (answer == false);
    }
    private void printMenu() {
        System.out.println("___________________________________________________________\n");
        System.out.println("               Welcome to Clean-and-Go Shop                \n");
        System.out.println("                   Delete Information                      \n");
        System.out.println("___________________________________________________________\n");
        System.out.println("                (a) Delete equipment                       \n");
        System.out.println("                (b) Delete service                         \n");
        System.out.println("                (c) Delete customer information            \n");
        System.out.println("                (d) Delete employee information            \n");
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
    
}
