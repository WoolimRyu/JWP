import static org.junit.Assert.*;

import org.junit.Test;


public class CalculatorTest {
	Calculator c = new Calculator();
	
	@Test
	public void voidStringShouldReturnZero() {
		assertEquals(c.add(""), 0);
	}
	
	@Test
	public void stringShouldBeSplitByComma() {
		assertEquals("1,2 must return 3", c.add("1,2"), 3);
		assertEquals("1,2,3 must return 6", c.add("1,2,3"), 6);
	}
	
	@Test
	public void stringSholudBeSplitByNewline() {
		assertEquals(c.add("1\n2\n3"), 6);
	}
	
	@Test
	public void stringSholudBeSplitByCommaAndNewline() {
		assertEquals(c.add("1,2\n3"), 6);
	}
	
}
