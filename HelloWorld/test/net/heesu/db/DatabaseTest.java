package net.heesu.db;

import static org.junit.Assert.*;
import net.heesu.user.User;
import net.heesu.user.UserTest;

import org.junit.Test;

public class DatabaseTest {

	@Test
	public void addAndFind() {
		User user = UserTest.TEST_USER;
		Database.addUser(user);
		User dbuser = Database.findUserByUsermail(user.getUsermail());
		
		assertEquals(user, dbuser);
	}
	
	public void addAndFindWhenNotExisted() {
		User dbuser = Database.findUserByUsermail("nobody@naver.com");
		assertNull(dbuser);
	}

}
