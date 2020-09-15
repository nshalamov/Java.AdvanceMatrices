package com.company;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Phonebook {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String input = scan.nextLine();

        Map<String, String> phonebook = new HashMap<>();

        while (!input.equals("search")) {
            String[] tokens = input.split("-");
            String name = tokens[0];
            String phoneNumber = tokens[1];
            phonebook.putIfAbsent(name, "");
            phonebook.put(name, phoneNumber);
            input = scan.nextLine();
        }

        input = scan.nextLine();

        while (!input.equals("stop")) {
            if (phonebook.containsKey(input)) {
                System.out.println(String.format("%s -> %s", input, phonebook.get(input)));
            } else {
                System.out.println(String.format("Contact %s does not exist.", input));
            }
            input = scan.nextLine();
        }
    }
}
