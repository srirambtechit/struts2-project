package com.kogent.struts.security;
import java.util.HashMap;
import java.util.Map;

import javax.security.sasl.AuthenticationException;

public class SecurityServiceImpl implements SecurityService {
	private Map users;
	private static final String ADMIN_ROLE = "administrator";
	private static final String CLERK_ROLE = "clrek";
	
	public SecurityServiceImpl(){
		users = new HashMap();
		users.put("santosh", new User( "santosh", "kogent", new String[] {ADMIN_ROLE, CLERK_ROLE}));
		users.put("prakash", new User( "prakash", "kogent", new String[] {CLERK_ROLE}));
	}

	public User authenticate(String username, String password)throws AuthenticationException {
		User user = (User) users.get(username);
		if (user == null) throw new AuthenticationException("Unknown user");
		boolean passwordIsValid = user.passwordMatch(password);
		if (!passwordIsValid) throw new AuthenticationException("Invalid password");
		return user;
	}
	
}

