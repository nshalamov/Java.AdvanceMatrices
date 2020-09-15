package com.company;

import java.util.LinkedHashSet;
import java.util.Scanner;
import java.util.Set;

public class SetsOfElements {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String[] lengths = scan.nextLine().split("\\s+");
        int n = Integer.parseInt(lengths[0]);
        int m = Integer.parseInt(lengths[1]);

        Set<Integer> first = new LinkedHashSet<>();
        Set<Integer> second = new LinkedHashSet<>();

        for (int i = 0; i < n; i++) {
            first.add(Integer.parseInt(scan.nextLine()));
        }

        for (int i = 0; i < m; i++) {
            second.add(Integer.parseInt(scan.nextLine()));
        }

        first.retainAll(second);

        first.forEach(num -> System.out.print(num + " "));
    }
}
