package com.kogent.struts.security;
import javax.security.sasl.AuthenticationException;

public interface SecurityService {
	public User authenticate(String username, String password)
			throws AuthenticationException;
}
