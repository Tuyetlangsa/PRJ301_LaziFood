/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table.accounts;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBUtil;

/**
 *
 * @author long
 */
public class AccountDAO implements Serializable {

    public AccountDTO getAccount(String username, String password) throws SQLException {
        Connection cn = null;
        AccountDTO acc = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            cn = DBUtil.makeConnection();
            if (cn != null) {
                String sql = "Select [id], [username], [full_name], [phone], "
                        + "[address], [city_id], [district_id], [role], [status]"
                        + "from Accounts where [username] = ? and [password] = ?";
                ps = cn.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2, password);
                rs = ps.executeQuery();
                if (rs.next()) {
                    int id = rs.getInt("id");
                    String fullname = rs.getString("full_name");
                    String phone = rs.getString("phone");
                    String address = rs.getString("address");
                    int cityId = rs.getInt("city_id");
                    int districtId = rs.getInt("district_id");
                    boolean role = rs.getBoolean("role");
                    boolean status = rs.getBoolean("status");
                    acc = new AccountDTO(id, username, fullname, phone, address, cityId, districtId, role, status);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (cn != null) {
                cn.close();
            }
        }
        return acc;
    }

    public boolean
            insertAccount(String userName, String passWord, String fullName, String email, String phone) throws SQLException {
        Connection cn = null;
        PreparedStatement stm = null;
        try {
            cn = DBUtil.makeConnection();
            if (cn != null) {
                String sql = "Insert into [dbo].[Accounts]([username], "
                        + "[password], [full_name], [phone], [email]) "
                        + "Values(?, ?, ?, ?, ?)";
                stm = cn.prepareStatement(sql);
                stm.setString(1, userName);
                stm.setString(2, passWord);
                stm.setString(3, fullName);
                stm.setString(4, phone);
                stm.setString(5, email);
                int row = stm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (cn != null) {
                cn.close();
            }
        }
        return false;
    }
    
            
        public boolean checkExistAccount(String username) throws SQLException {
        Connection cn = null;
        AccountDTO acc = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            cn = DBUtil.makeConnection();
            if (cn != null) {
                String sql = "Select [id] "
                        + "from Accounts where [username] = ?";
                ps = cn.prepareStatement(sql);
                ps.setString(1, username);
                rs = ps.executeQuery();
                if (rs.next()) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ps != null) {
                ps.close();
            }
            if (cn != null) {
                cn.close();
            }
        }
        return false;
    }
            
}
