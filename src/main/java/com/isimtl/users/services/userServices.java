/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.isimtl.users.services;

import com.isimtl.authentication.HashedPassword;
import com.isimtl.users.models.User;
import java.util.HashMap;

/**
 *
 * @author isi
 */
public class userServices {
    HashMap<String, HashedPassword> userLoginData = new HashMap<>();
    HashMap<String, User> userData = new HashMap<>();

    public User addUser(String username,User user){
        userData.put(username, user);
        userLoginData.put(user.getUsername(),user.getPassword());
        return user;
    }
    
}
