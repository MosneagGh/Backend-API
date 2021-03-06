package com.marketplace.backend.service;

import com.marketplace.backend.mapper.UserMapper;
import com.marketplace.backend.model.RegisterRequest;
import com.marketplace.backend.model.User;
import com.marketplace.backend.model.UserRole;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;


@Service
@AllArgsConstructor
public class UserService implements UserDetailsService {
    @Autowired
    private final UserMapper userMapper;
    @Autowired
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public UserDetails loadUserByUsername(String username)

            throws UsernameNotFoundException {
        User user = userMapper.findByUsername(username);
        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), new ArrayList<>());
    }

    public User signUp(User user) {

        User users = userMapper.findByUsername(user.getUsername());
        if (users != null)
            throw new UsernameNotFoundException(String.format("User with %s already exists", users.getUsername()));
        String encodePass = bCryptPasswordEncoder
                .encode(user.getPassword());
        user.setPassword(encodePass);
        userMapper.save(user);
        return user;
    }

    public User register(RegisterRequest request) {
        return signUp(
                new User(

                        request.getUsername(),
                        request.getPassword(),
                        request.getEmail(),
                        UserRole.USER
                )
        );
    }

}