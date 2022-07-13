/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.isimtl.users.services;

import com.isimtl.authentication.HashedPassword;
import com.isimtl.authentication.PasswordHasher;
import com.isimtl.authentication.PasswordResult;
import com.isimtl.users.exceptions.UserException;
import com.isimtl.users.models.User;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;

/**
 *
 * @author isi
 */
public class userServices {
    public static HashMap<String, HashedPassword> userLoginData = new HashMap<>();
    public static HashMap<String, User> userData = new HashMap<>();

    public HashMap<String, HashedPassword> getUserLoginData() {
        return userLoginData;
    }

    public HashMap<String, User> getUserData() {
        return userData;
    }

    public User addUser(String username,String password,String confirmpassword,String name,String dateofbirth) throws UserException{
        if (userLoginData.containsKey(username)) {
            throw new UserException("Username not available");
        }
        if (username==null || username.isEmpty()) { 
            throw new UserException("Username was empty");
        }
        if (password==null || password.isEmpty()) {
            throw new UserException("Password was empty");
        }
        if (!confirmpassword.equals(password)) {
            throw new UserException("Passwords did not match");
        }
        if (name==null || "".equals(name)) {
            throw new UserException("Name must not be empty");
        }
        if (dateofbirth==null || dateofbirth.isEmpty()) {
            throw new UserException("Date of Birth must not be empty");
        }
        HashedPassword newHashedPassword; 
        newHashedPassword = PasswordHasher.hashPassword(password);
        LocalDate dob = LocalDate.parse(dateofbirth);
        if (dob.isAfter(LocalDate.now())) {
           throw new UserException("Date of birth is a future date");  
        }
        User user = new User(username, newHashedPassword,name,dob);
        userData.put(username, user);
        userLoginData.put(user.getUsername(),user.getPassword());
        return user;
    }

    public User checkLoginAuth(String username, String password) throws UserException {
        if (username == null || username.isEmpty()) {
            throw new UserException("Username was empty");
        }
        if (password == null || password.isEmpty()) {
            throw new UserException("Password was empty");
        }
        HashedPassword newHashedPassword; 
        newHashedPassword = PasswordHasher.hashPassword(password);
        if (userLoginData.containsKey(username)) {
            if (PasswordHasher.checkPassword(password, userLoginData.get(username)) == PasswordResult.Correct) {
                return userData.get(username);
            }
            else{
                throw new UserException("Incorrect Credentials");
            }
        }else{
           throw new UserException("Incorrect Credentials : Username or Password is incorrect");
        }
    }
    
}
