/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table.accounts;

import java.io.Serializable;

/**
 *
 * @author long
 */
public class AccountDTO implements Serializable {
    private int id;
    private String username;
    private String fullname;
    private String phone;
    private String address;
    private int cityId;
    private int districtId;
    private boolean role;
    private boolean status;

    public AccountDTO() {
    }

    public AccountDTO(int id, String username, String fullname, String phone, String address, int cityId, int districtId, boolean role, boolean status) {
        this.id = id;
        this.username = username;
        this.fullname = fullname;
        this.phone = phone;
        this.address = address;
        this.cityId = cityId;
        this.districtId = districtId;
        this.role = role;
        this.status = status;
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

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public int getDistrictId() {
        return districtId;
    }

    public void setDistrictId(int districtId) {
        this.districtId = districtId;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
