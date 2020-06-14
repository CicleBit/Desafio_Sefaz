package beans;

public class BeansSefaz {

	private String login;
	private String password;
	
	public boolean validateLoginAndPassword(String login, String password) {
		if(login.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")) {
			return true;
		}else {
			return false;
		}
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
