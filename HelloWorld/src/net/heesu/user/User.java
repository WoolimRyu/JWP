package net.heesu.user;

public class User {
	private String title;
	private String username;
	private String usermail;
	private String usercard;
	private String cardnumber;
	private String expiration;

	public User(String title, String username, String usermail,
			String usercard, String cardnumber, String expiration) {
		super();
		this.title = title;
		this.username = username;
		this.usermail = usermail;
		this.usercard = usercard;
		this.cardnumber = cardnumber;
		this.expiration = expiration;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUsermail() {
		return usermail;
	}

	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}

	public String getUsercard() {
		return usercard;
	}

	public void setUsercard(String usercard) {
		this.usercard = usercard;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}

	public String getExpiration() {
		return expiration;
	}

	public void setExpiration(String expiration) {
		this.expiration = expiration;
	}
}
