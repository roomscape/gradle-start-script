package com.example;

/**
 * Prints out the value of the system property 'foo' and then exits.
 */
public class Main {
    public static void main(String[] args) {
        String foo = System.getProperty("foo");
        System.out.println("Application was started with -Dfoo=" + foo);
    }
}
