/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

public class User {

    private int id;
    private String username;
    private String email;
    private String password;
    private String phoneNumber;
    private String Status;
    private int UserRol;

    public User() {
    }

    public User(String username, String email, String password, String phoneNumber, String Status, int UserRol) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.Status = Status;
        this.UserRol = UserRol;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public int getUserRol() {
        return UserRol;
    }

    public void setUserRol(int UserRol) {
        this.UserRol = UserRol;
    }

    @Override
    public String toString() {
        return "User{"
                + "id=" + id
                + ", username='" + username + '\''
                + ", email='" + email + '\''
                + ", password='" + password + '\''
                + ", phoneNumber='" + phoneNumber + '\''
                + ", Status='" + Status + '\''
                + ", UserRol='" + UserRol + '\''
                + '}';
    }
}