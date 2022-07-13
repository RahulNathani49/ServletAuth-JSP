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

    public User(String username, HashedPassword password, String name, LocalDate dateOfBirth) throws UserException { 
          if (username==null || username.isEmpty()) { 
            throw new UserException("Username was empty");
        }
        if (password==null) {
            throw new UserException("Password was empty");
        }
        
        if (name==null || "".equals(name)) {
            throw new UserException("Name must not be empty");
        }
        if (dateOfBirth.isAfter(LocalDate.now())) {
            throw new UserException("Date of birth is a future date");  
        }
        this.username = username;
        this.password = password;
        this.name = name;
        this.dateOfBirth = dateOfBirth;
    }

    @Override
    public String toString() {
        return username; 
    }
    
    
}
