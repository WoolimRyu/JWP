import java.util.regex.*;


public class Calculator {
	int add(String text) {
		if(text.isEmpty()) return 0;
		
		String delimiter;
		String[] numbers;
		
		Matcher m = Pattern.compile("//(.)\n(.*)").matcher(text);
		if(m.find()) {
			delimiter = m.group(1);
			numbers = m.group(2).split(delimiter);
			
		} else {
			delimiter = ",|\n";
			numbers = text.split(delimiter);
		}
		
		int result = 0;
		for (int i = 0; i < numbers.length; i++) {
			result += Integer.parseInt(numbers[i]);
		}
		return result;
	}
}
