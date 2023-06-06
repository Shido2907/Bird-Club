/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fptuni.prj301.demo.model;


import java.util.Date;

/**
 *
 * @author MSI GF63
 */
public class User {
    
    private String userId;
    private String userName;
    private String fullName;
    private String phone;
    private String email;
    private String role;
    private Date expriedDate;
    private String Status;
    private Date signupDateDate;
    private String MID;
    private String gender;

    public User() {
    }

    public User(String userId, String userName, String fullName, String phone, String email, String role, Date expriedDate, String Status, Date signupDateDate, String MID, String gender) {
        this.userId = userId;
        this.userName = userName;
        this.fullName = fullName;
        this.phone = phone;
        this.email = email;
        this.role = role;
        this.expriedDate = expriedDate;
        this.Status = Status;
        this.signupDateDate = signupDateDate;
        this.MID = MID;
        this.gender = gender;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Date getExpriedDate() {
        return expriedDate;
    }

    public void setExpriedDate(Date expriedDate) {
        this.expriedDate = expriedDate;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public Date getSignupDateDate() {
        return signupDateDate;
    }

    public void setSignupDateDate(Date signupDateDate) {
        this.signupDateDate = signupDateDate;
    }

    public String getMID() {
        return MID;
    }

    public void setMID(String MID) {
        this.MID = MID;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    


    
}
