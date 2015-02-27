
public class Calculator {
	int add(String text) {
		if(text.isEmpty()) return 0;
		
		String[] numbers = text.split("[^\\d]+");
		
		int result = 0;
		for (int i = 0; i < numbers.length; i++) {
			result += Integer.parseInt(numbers[i]);
		}
		return result;
	}
}
