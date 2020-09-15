package com.company;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;

public class FixEmails {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String name = scan.nextLine();
        Map<String, String> mailBook = new LinkedHashMap<>();

        while (!name.equals("stop")) {
            String email = scan.nextLine();
            int i = email.indexOf('.', email.length() - 4);
            String domain = email.substring(i + 1);
            if (!domain.equals("us") && !domain.equals("uk") && !domain.equals("com")) {
                mailBook.putIfAbsent(name, "");
                mailBook.put(name, email);
            }
            name = scan.nextLine();
        }

        for (Map.Entry<String, String> entry : mailBook.entrySet()) {
            System.out.println(String.format("%s -> %s", entry.getKey(), entry.getValue()));
        }
    }
}
