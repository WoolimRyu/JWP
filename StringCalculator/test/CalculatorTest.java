import static org.junit.Assert.*;

import org.junit.Test;


public class CalculatorTest {

	@Test
	public void testAssertVoidStringEqualsZero() {
		Calculator c = new Calculator();
		assertEquals(c.add(""), 0);
	}
	
	@Test
	public void shouldBeSplitByComma() {
		Calculator c = new Calculator();
		assertEquals("1,2 must return 3", c.add("1,2"), 3);
		assertEquals("1,2,3 must return 6", c.add("1,2,3"), 6);
	}
	
	@Test
	public void ShouldBeSplitByNewline() {
		Calculator c = new Calculator();
		assertEquals(c.add("1\n2\n3"), 6);
	}
	
	@Test
	public void ShouldBeSplitByCommaAndNewline() {
		Calculator c = new Calculator();
		assertEquals(c.add("1,2\n3"), 6);
	}
	
}
