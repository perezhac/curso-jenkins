package com.miempresa;

import static org.junit.Assert.*;
import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class AppTest 
{ 
    @Test
    public void testSumar()
    {
        App app = new App();
        assertEquals(5, app.sumar(2,3)); 
    }
}
