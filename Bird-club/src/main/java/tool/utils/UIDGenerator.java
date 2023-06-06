/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tool.utils;



import java.util.Random;

public class UIDGenerator {
    public static String generateUID() {
        Random random = new Random();
        int randomNumber = random.nextInt(90000) + 10000;
        return "u" + randomNumber;
    }
}
