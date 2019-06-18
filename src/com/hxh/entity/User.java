package com.hxh.entity;

/**
 * @Author: H_xinghai
 * @Date: 2019/6/14 15:16
 * @Description:
 */

public class User {
    private int id;
    private String account;
    private String username;
    private String password;
    private String sex;
    private String emial;
    private int age;

    public User(int id, String account, String username, String password, String sex, String emial, int age) {
        this.id = id;
        this.account = account;
        this.username = username;
        this.password = password;
        this.sex = sex;
        this.emial = emial;
        this.age = age;
    }

    public User(){

    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", emial='" + emial + '\'' +
                ", age=" + age +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmial() {
        return emial;
    }

    public void setEmial(String emial) {
        this.emial = emial;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
