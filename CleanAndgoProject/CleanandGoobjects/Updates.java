package CleanandGoobjects;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import UpdatesObjects.UpdateInsert;
import UpdatesObjects.UpdateDelete;
import UpdatesObjects.Update;

public class Updates {
    private void printMenu() {
        System.out.println("___________________________________________________________\n");
        System.out.println("               Welcome to Clean-and-Go Shop                \n");
        System.out.println("                        Update                             \n");
        System.out.println("___________________________________________________________\n");
        System.out.println("                (a) Insert Information                     \n");
        System.out.println("                (b) Delete Information                     \n");
        System.out.println("                (c) Update Information                     \n");
        System.out.println("                (r) Return to main menu                    \n");
        System.out.println("___________________________________________________________\n");
    }
    public void menuDriver() throws IOException {
        UpdateInsert insert = new UpdateInsert();
        Update update = new Update();
        UpdateDelete delete = new UpdateDelete();

        boolean answer = false;
        do {
            printMenu();
            System.out.print("Type in your option: ");
            System.out.flush();
            String ch = readLine();
            System.out.println();
            switch (ch.charAt(0)) {
                case 'a': insert.Menu();
                    break;
                case 'b': delete.Menu();
                    break;
                case 'c': update.Menu();
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
