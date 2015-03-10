package net.heesu.user;

import static org.junit.Assert.*;
import net.heesu.db.Database;
import net.heesu.user.User;

import org.junit.Test;


public class UserTest {

	public static User TEST_USER = new User("title", "username", "email@nhnnext.org", "visa", "0405132", "2017-01");
	
	@Test
	public void matchPassword() {
		System.out.println("matchPassword");
		assertTrue(TEST_USER.matchUsername("username"));
	}
	
	@Test
	public void notMatchPassword() {
		System.out.println("notMatchPassword");
		assertFalse(TEST_USER.matchUsername("username2"));
	}
	
	@Test
	public void login() throws Exception {
		System.out.println("login");
		User user = UserTest.TEST_USER;
		Database.addUser(user);
		
		assertTrue(User.login(TEST_USER.getUsermail(), TEST_USER.getUsername()));
	}
	
	@Test(expected=UserNotFoundException.class)
	public void loginWhenNotExistingUser() throws Exception {
		System.out.println("notfound");
		User.login("nobody@naver.com", TEST_USER.getUsername());
	}
	
	@Test(expected=UsernameMismatchException.class)
	public void loginWhenUsernameMismatch() throws Exception {
		System.out.println("wrongusername");
		User.login(TEST_USER.getUsermail(), "wrongUsername");
	}

}
