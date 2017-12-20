package edu.mum.registration.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.mum.registration.domain.User;
import edu.mum.registration.repository.UserRepository;
import edu.mum.registration.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	UserRepository userRepository;
	
	@Override
	public User getUserByUsername(String userName) {		
		return userRepository.findUserByUsername(userName);
	}
	
}
