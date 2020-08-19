package ch.css;

import com.sun.javadoc.SourcePosition;
import java.util.Scanner;


public class Test{
    public static void main(String[] args){
        // int height = 180;
        // int age = 15;
        // String name = "Dawid";
        // String surname = "Kapka";
        //int calculation = 15 * 2;

        // System.out.println("Grösse: " + height + "cm");
        //System.out.println("Alter: " + age);
        //System.out.println("Name: " + name);
        //System.out.println("Nachname: " + surname);

        //System.out.println("15 x 2 = " + calculation);

        //int a = 50;
        //double b = a;

        //System.out.println(b);

        //double c = 20;
        //int d = (int)c;

        //System.out.println(d);


        //String[] names = {"Yanic", "Jan", "Leonie"};
        //System.out.println(names[1]);
        //System.out.println(names[names.length-1]);



        String[] usernames = {"user1", "user2", "user3"};
        String[] passwords = {"123", "456", "789"};

        try (Scanner scanner = new Scanner(System.in)) {

            System.out.print("Enter Username: ");

            String usernameInput = scanner.nextLine();


            if (usernameInput.equals(usernames[0])){
                try (Scanner scanner2 = new Scanner(System.in)) {

                    System.out.print("Enter Password: ");

                    String passwordInput = scanner.nextLine();

                    if (passwordInput.equals(passwords[0])){
                        System.out.println("Logged In");

                    } else {
                        System.out.println("Invalid Password!");
                    }

                }

            } else if (usernameInput.equals(usernames[1])) {
                try (Scanner scanner2 = new Scanner(System.in)) {

                    System.out.print("Enter Password: ");

                    String passwordInput = scanner.nextLine();

                    if (passwordInput.equals(passwords[1])) {
                        System.out.println("Logged In");

                    } else {
                        System.out.println("Invalid Password!");
                    }
                }
            } else if (usernameInput.equals(usernames[2])) {
                try (Scanner scanner2 = new Scanner(System.in)) {

                    System.out.print("Enter Password: ");

                    String passwordInput = scanner.nextLine();

                    if (passwordInput.equals(passwords[2])) {
                        System.out.println("Logged In");

                    } else {
                        System.out.println("Invalid Password!");
                    }
                }
            } else {
                System.out.println("Invalid Username");
            }
        }




    }




}












