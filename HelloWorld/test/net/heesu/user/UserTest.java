package net.heesu.user;

import static org.junit.Assert.*;
import net.heesu.db.Database;
import net.heesu.user.User;

import org.junit.Before;
import org.junit.Test;


public class UserTest {

	public static User TEST_USER = new User("title", "username", "email@nhnnext.org", "visa", "0405132", "2017-01");
	
	@Before
	public void addUser() {
		Database.addUser(TEST_USER);
	}
	
	@Test
	public void matchPassword() {
		assertTrue(TEST_USER.matchUsername("username"));
	}
	
	@Test
	public void notMatchPassword() {
		assertFalse(TEST_USER.matchUsername("username2"));
	}
	
	@Test
	public void login() throws Exception {		
		assertTrue(User.login(TEST_USER.getUsermail(), TEST_USER.getUsername()));
	}
	
	@Test(expected=UserNotFoundException.class)
	public void loginWhenNotExistingUser() throws Exception {
		User.login("nobody@naver.com", TEST_USER.getUsername());
	}
	
	@Test(expected=UsernameMismatchException.class)
	public void loginWhenUsernameMismatch() throws Exception {
		User.login(TEST_USER.getUsermail(), "wrongUsername");
	}

}
