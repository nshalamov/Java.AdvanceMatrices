package com.company;

import java.util.*;

public class UserLogs {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String input = scan.nextLine();

        Map<String, Map<String, Integer>> users = new TreeMap<>();

        while (!input.equals("end")) {
            String[] tokens = input.split("\\s+");
            String[] ipAddress = tokens[0].split("=");
            String[] userInfo = tokens[2].split("=");
            String ip = ipAddress[1];
            String user = userInfo[1];

            users.putIfAbsent(user, new LinkedHashMap<>());
            users.get(user).putIfAbsent(ip, 0);
            int value = users.get(user).get(ip);
            users.get(user).put(ip, value + 1);
            input = scan.nextLine();
        }

        for (Map.Entry<String, Map<String, Integer>> outerEntry : users.entrySet()) {
            System.out.println(outerEntry.getKey() + ": ");
            Map<String, Integer> innerMap = outerEntry.getValue();
            int counter = innerMap.size();
            for (Map.Entry<String, Integer> innerEntry : innerMap.entrySet()) {
                if (counter > 1) {
                    System.out.print(String.format("%s => %d, ",innerEntry.getKey(), innerEntry.getValue()));
                } else {
                    System.out.println(String.format("%s => %d.",innerEntry.getKey(), innerEntry.getValue()));
                }
                counter--;
            }
        }
    }
}
