/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package QE.dao;
import QE.model.User;
import java.sql.*;

/**
 *
 * @author Tanusha Manamperi
 */
public class UserDao {
    Connection con;
    
    public UserDao (Connection con){
        this.con=con;
    }
    
    public boolean SaveUser(User user){
        
        boolean set=false;
        
        try{
            String query = "insert into user(firstname, lastname, username, email, password)values(?,?,?,?,?)";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getFname());
            pt.setString(2, user.getLname());
            pt.setString(3, user.getUsername());
            pt.setString(4, user.getEmail());
            pt.setString(5, user.getPassword());
            
            pt.executeUpdate();
            set=true;
            
        }catch(Exception e){
            e.printStackTrace();
        } 
        return set;
    }
    
}
