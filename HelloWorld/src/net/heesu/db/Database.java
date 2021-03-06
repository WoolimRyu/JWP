package net.heesu.db;

import java.util.HashMap;
import java.util.Map;

import net.heesu.user.User;

public class Database {
	private static Map<String, User> users = new HashMap<String, User>();
	
	public static void addUser(User user) {
		users.put(user.getUsermail(), user);
	}
	
	public static Map<String, User> getUsers() {
		return users;
	}

	public static User findUserByUsermail(String usermail) {
		return users.get(usermail);
	}
}
