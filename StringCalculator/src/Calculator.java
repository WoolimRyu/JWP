
public class Calculator {
	int add(String text) {
		String[] tokens = text.split("[,\n]+");
		int result = 0;
		for (int i = 0; i < tokens.length; i++) {
			result += Integer.parseInt(tokens[i]);
		}
		return result;
	}
}
