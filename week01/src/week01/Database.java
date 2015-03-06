package week01;

import java.util.HashMap;

public class Database {
	private static HashMap<String, User> users = new HashMap<String, User>();
	
	public static void addUser(User user) {
		users.put(user.getEmail(), user);
	}
	
	public static HashMap<String, User> getUserList() {
		return users;
	}

	public static void updateUser(User user) {
		users.put(user.getEmail(), user);
	}
}
