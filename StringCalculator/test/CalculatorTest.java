import static org.junit.Assert.*;

import org.junit.Test;


public class CalculatorTest {

	@Test
	public void testAssertVoidStringEqualsZero() {
		Calculator c = new Calculator();
		assertEquals(c.add(""), 0);
	}

}
