/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package table.menuCategories;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import utils.DBUtil;

/**
 *
 * @author long
 */
public class MenuCategoriesDAO {
    private List<MenuCategoriesDTO> listDTO;

    public MenuCategoriesDAO() {
    }

    

    public List<MenuCategoriesDTO> getListDTO() {
        return listDTO;
    }
    
 
    public void getAllMenuCategories () throws SQLException {
        Connection cn = null;
        Statement stm = null ;
        ResultSet rs = null;
        try {
            cn = DBUtil.makeConnection();
            if (cn != null) {
                String sql = "Select [id], [name] from Menu_Categories";
                stm = cn.createStatement();
                rs = stm.executeQuery(sql);
                
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    MenuCategoriesDTO dto = new MenuCategoriesDTO(id, name);
                    if(listDTO == null) {
                        listDTO = new ArrayList<>();
                    }
                    listDTO.add(dto);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (cn != null) {
                cn.close();
            }  
    }
}
}
