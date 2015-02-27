import java.util.regex.*;


public class Calculator {
	int add(String text) {
		if(text.isEmpty()) return 0;
		String[] numbers = this.parse(text);
		return this.sum(numbers);
	}
	
	String[] parse(String text) {
		String delimiter;
		Matcher m = Pattern.compile("//(.)\n(.*)").matcher(text);
		if(m.find()) {
			delimiter = m.group(1);
			return m.group(2).split(delimiter);
			
		}
		delimiter = ",|\n";
		return text.split(delimiter);
	}
	
	int sum(String[] numbers) {
		int result = 0;
		for (int i = 0; i < numbers.length; i++) {
			result += Integer.parseInt(numbers[i]);
		}
		return result;
	}
}
