/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author long
 */
public class DBUtil {
    public static Connection makeConnection() throws NamingException, SQLException{
        //1. get current system file
        Context context = new InitialContext();
        //2. get container context
        Context tomcatContext = (Context) context.lookup("java:comp/env");
        //3. get DataSource from container
        DataSource ds = (DataSource) tomcatContext.lookup("DSBlink");
        //4. get Connection
        Connection cn = ds.getConnection(); 
        return cn;
    }
}
