package ch.css;

import com.sun.javadoc.SourcePosition;
import java.util.Scanner;
import java.util.Random;

public class Test2 {
    public static void main(String[] args){
        Random random = new Random();
        int tries = 9;
        int upperbound = 31;;
        int randomInt = random.nextInt(upperbound);
        try (Scanner scanner = new Scanner(System.in)) {
            while (tries > 0) {
                System.out.println("Guess the Number: ");
                if (tries == 9 || tries == 6 || tries == 3) System.out.println(tries + " tries left");

                Double numberOutput = scanner.nextDouble();


                if (numberOutput == randomInt) {
                    System.out.println("Congratulations! You did it!");
                    System.exit(0);
                } else if (numberOutput >= randomInt) {
                    System.out.println("Wrong! The Number is lower!");
                    tries -= 1;
                } else {
                    System.out.println("Wrong! The Number is higher!");
                    tries -= 1;
                }
                }
                while (tries == 0){
                    System.out.println("You lost! The number was " + randomInt);
                    System.exit(0);
                }
            }
        }


    }


