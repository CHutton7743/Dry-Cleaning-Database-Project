package CleanandGoobjects;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import Equipment.SuppliesObjects.AnalyzeExpenses;
import Equipment.SuppliesObjects.Equipment;
import Equipment.SuppliesObjects.Supplies;

public class EquipmentAndSupplies {
    private void printMenu() {
        System.out.println("___________________________________________________________\n");
        System.out.println("               Welcome to Clean-and-Go Shop                \n");
        System.out.println("                  Equipment and Supplies                   \n");
        System.out.println("___________________________________________________________\n");
        System.out.println("                (a) Analyze annual expenses                \n");
        System.out.println("                (b) Supplies                               \n");
        System.out.println("                (c) Equipment                              \n");
        System.out.println("                (r) Return to main menu                    \n");
        System.out.println("___________________________________________________________\n");
    }
    public void menuDriver() throws IOException {
        AnalyzeExpenses analyze = new AnalyzeExpenses();
        Equipment equipment = new Equipment();
        Supplies supplies = new Supplies();
        boolean answer = false;
        do {
            printMenu();
            System.out.print("Type in your option: ");
            System.out.flush();
            String ch = readLine();
            System.out.println();
            switch (ch.charAt(0)) {
                case 'a': analyze.Menu();
                    break;
                case 'b': supplies.Menu();;
                    break;
                case 'c': equipment.Menu();
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
