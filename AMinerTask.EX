package com.company;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;

public class AMinerTask {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        Map<String, Integer> list = new LinkedHashMap<>();
        String input = scan.nextLine();
        while (!input.equals("stop")) {
            int quantity = Integer.parseInt(scan.nextLine());
            list.putIfAbsent(input, 0);
            int value = list.get(input);
            list.put(input, value + quantity);
            input = scan.nextLine();
        }

        for (Map.Entry<String, Integer> stringIntegerEntry : list.entrySet()) {
            System.out.println(String.format("%s -> %d", stringIntegerEntry.getKey(), stringIntegerEntry.getValue()));
        }
    }
}
