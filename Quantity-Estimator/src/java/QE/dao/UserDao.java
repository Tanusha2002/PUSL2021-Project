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
            String query = "INSERT INTO user (username, email, firstname, lastname, password) VALUES (?, ?, ?, ?, ?)";
            
            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getUsername());
            pt.setString(2, user.getEmail());
            pt.setString(3, user.getFname());
            pt.setString(4, user.getLname());
            pt.setString(5, user.getPassword());
            
            pt.executeUpdate();
            set=true;
            
        }catch(Exception e){
            e.printStackTrace();
        } 
        return set;
    }
    
    public User logUser(String email, String pswd){
        User user= null;
        try{
            String query = "select * from user where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pswd);
            
            ResultSet rs = pst.executeQuery();
            if (rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setFname(rs.getString("firstname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return user;
    }
    
    
}
