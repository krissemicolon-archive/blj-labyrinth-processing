package ch2.css;

import com.sun.javadoc.SourcePosition;

import java.util.Scanner;

public class rechner {
    public static void main(String[] args) {

        try (Scanner scanner = new Scanner(System.in)) {

            System.out.println("1. Rechner");
            System.out.println("2. Flächen / Volumen");
            System.out.println("3. Umfang");
            System.out.print("Wähle eine Option: ");

            String firstChoice = scanner.nextLine();

            if (firstChoice.equals("1")) {


                System.out.println("Wähle eine Zahl: ");

                Double firstNumberOutput = scanner.nextDouble();


                System.out.println("Wähle eine Operation: ");

                String operationOutput = scanner.next();


                System.out.println("Wähle eine andere Zahl: ");

                Double secondNumberOutput = scanner.nextDouble();

                if (operationOutput.equals("+")) {
                    System.out.println(firstNumberOutput + secondNumberOutput);
                } else if (operationOutput.equals("-")) {
                    System.out.println(firstNumberOutput - secondNumberOutput);
                } else if (operationOutput.equals("*")) {
                    System.out.println(firstNumberOutput * secondNumberOutput);
                } else if (operationOutput.equals("/")) {
                    System.out.println(firstNumberOutput / secondNumberOutput);
                } else {
                    System.out.println("Ungültige Operation");
                }


            } else if (firstChoice.equals("2")) {

                try (Scanner secondChoice = new Scanner(System.in)) {

                    System.out.println("1. Rechteck");
                    System.out.println("2. Kreis");
                    System.out.println("3. Dreieck");
                    System.out.println("4. Würfel");

                    String secondChoiceOutput = scanner.nextLine();

                    if (secondChoiceOutput.equals("1")) {

                        try (Scanner firstA = new Scanner(System.in)) {

                            System.out.println("Seite a: ");

                            Double firstAOutput = scanner.nextDouble();


                            try (Scanner firstB = new Scanner(System.in)) {

                                System.out.println("Seite B: ");

                                Double firstBOutput = scanner.nextDouble();

                                System.out.println(firstAOutput * firstBOutput);
                            }


                        }
                    } else if (secondChoiceOutput.equals("2")) {

                        try (Scanner secondA = new Scanner(System.in)) {

                            System.out.println("Seite a: ");

                            Double secondAOutput = scanner.nextDouble();

                            System.out.println(secondAOutput * secondAOutput * Math.PI);

                        }
                    } else if (secondChoiceOutput.equals("3")) {

                        try (Scanner thirdA = new Scanner(System.in)) {

                            System.out.println("Radius: ");

                            Double thirdAOutput = scanner.nextDouble();


                            try (Scanner thirdB = new Scanner(System.in)) {

                                System.out.println("Höhe: ");

                                Double thirdBOutput = scanner.nextDouble();

                                System.out.println(thirdAOutput * thirdAOutput * Math.PI * thirdBOutput);
                            }
                        }

                    } else if (secondChoiceOutput.equals("4")) {

                        try (Scanner fourthA = new Scanner(System.in)) {

                            System.out.println("Seite a: ");

                            Double fourthAOutput = scanner.nextDouble();


                            try (Scanner fourthB = new Scanner(System.in)) {

                                System.out.println("Seite B: ");

                                Double fourthBOutput = scanner.nextDouble();

                                try (Scanner fourthC = new Scanner(System.in)) {

                                    System.out.println("Höhe: ");

                                    Double fourthCOutput = scanner.nextDouble();

                                    System.out.println(fourthAOutput * fourthBOutput * fourthCOutput);
                                }


                            }
                        }


                    }


                }
            } else if (firstChoice.equals("3")) {

                try (Scanner secondChoice = new Scanner(System.in)) {

                    System.out.println("1. Rechteck");
                    System.out.println("2. Kreis");

                    String secondChoiceOutput = scanner.nextLine();

                    if (secondChoiceOutput.equals("1")) {

                        try (Scanner firstA = new Scanner(System.in)) {

                            System.out.println("Seite a: ");

                            Double firstAOutput = scanner.nextDouble();


                            try (Scanner firstB = new Scanner(System.in)) {

                                System.out.println("Seite B: ");

                                Double firstBOutput = scanner.nextDouble();

                                System.out.println(firstAOutput + firstBOutput + firstAOutput + firstBOutput);
                            }


                        }
                    } else if (secondChoiceOutput.equals("2")) {

                        try (Scanner secondA = new Scanner(System.in)) {

                            System.out.println("Radius: ");

                            Double secondAOutput = scanner.nextDouble();

                            System.out.println(secondAOutput * Math.PI);

                        }
                    } else if (secondChoiceOutput.equals("3")) {

                        try (Scanner thirdA = new Scanner(System.in)) {

                            System.out.println("Seite a: ");

                            Double thirdAOutput = scanner.nextDouble();


                            try (Scanner thirdB = new Scanner(System.in)) {

                                System.out.println("Seite b: ");

                                Double thirdBOutput = scanner.nextDouble();


                                try (Scanner thirdBa = new Scanner(System.in)) {

                                    System.out.println("Seite c: ");

                                    Double thirdCOutput = scanner.nextDouble();

                                    System.out.println();
                                }
                            }
                        }


                    } else {
                        System.out.println("Ungültige Option!");
                    }
                }
            }
        }
    }
}