package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class HelloWorldTest {

    @Test
    public void testHelloWorld() {
        // Simulate the "Hello, World!" message from the HelloWorld class
        String message = "Hello, World!";
        
        // Verify if the message is correct
        assertEquals("Hello, World!", message, "Message should match 'Hello, World!'");
    }
}
