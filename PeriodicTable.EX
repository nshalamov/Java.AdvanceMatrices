package com.company;

import org.w3c.dom.ls.LSOutput;

import java.util.Arrays;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;

public class PeriodicTable {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int n = scan.nextInt();
        scan.nextLine();

        Set<String> compounds = new TreeSet<>();

        while (n-- > 0) {
            String[] input = scan.nextLine().split("\\s+");
            compounds.addAll(Arrays.asList(input));
        }

        compounds.forEach(c -> System.out.print(c + " "));
    }
}
