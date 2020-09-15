package com.company;

import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;

public class CountSymbols {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String input = scan.nextLine();

        Map<Character, Integer> occurrences = new TreeMap<>();

        for (int i = 0; i < input.length(); i++) {
            Character current = input.charAt(i);
            occurrences.putIfAbsent(current, 0);
            int value = occurrences.get(current);
            occurrences.put(current, value + 1);
        }

        occurrences.forEach((key, value) -> System.out.println
                (String.format("%c: %d time/s", key, value)));
    }
}
