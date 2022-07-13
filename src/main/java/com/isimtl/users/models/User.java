/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.isimtl.users.models;

import com.isimtl.authentication.HashedPassword;
import com.isimtl.authentication.PasswordHasher;
import com.isimtl.users.exceptions.UserException;
import java.time.LocalDate;

/**
 *
 * @author isi
 */
public class User {
    private String username;
    HashedPassword password;
    private String name;
    private LocalDate dateOfBirth;
    public String getUsername() {
        return username;
    }

    public HashedPassword getPassword() {
        return password;
    }

  

 
    public String getName() {
        return name;
    }

    public LocalDate getLocalDateOfBirth() {
        return dateOfBirth;
    }

    public void setUsername(String username) {
        this.username = username;
    }



    public void setName(String name) {
        this.name = name;
    }

    public void setLocalDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public User(String username, String password, String confirmPassword, String name, LocalDate dateOfBirth) throws UserException {
        if (username==null || "".equals(username)) {
            throw new UserException("Username must not be null");
        }
        if (password==null || "".equals(password)) {
            throw new UserException("password must not be null");
        }
        if (!confirmPassword.equals(password)) {
            throw new UserException("confirmpassword must be same as password");
        }
        if (name==null || "".equals(name)) {
            throw new UserException("Name must not be null");
        }
        if (dateOfBirth==null) {
            throw new UserException("LocalDate of Birth must not be null");
        }
        
        this.username = username;
        this.password = PasswordHasher.hashPassword(password);
        this.name = name;
        this.dateOfBirth = dateOfBirth;
    }

    @Override
    public String toString() {
        return username; // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    }
    
    
}
