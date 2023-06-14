/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.Employee;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kojer
 */
public class EmployeeDAO extends DBContext {
    
    public Employee getEmployeeById(String employeeId) {
        try {
            String sql = "SELECT *\n"
                + "  FROM [Employees]\n"
                + "  where EmployeeId = ?;";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, employeeId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new Employee(rs.getString("EmployeeId"),
                        rs.getString("FullName"),
                        rs.getDate("DOB"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getString("Password"),
                        rs.getString("Address"),
                        rs.getBoolean("Status"),
                        getEmployeeById(rs.getString("ManagerId")),
                        rs.getString("Description")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public Employee getEmployeeByEmailAndPwd(Employee e) {
        try {
            String sql = "SELECT *\n"
                    + "  FROM [Employees]\n"
                    + "  where Email = ? And [Password] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, e.getEmail());
            stm.setString(2, e.getPassword());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new Employee(rs.getString("EmployeeId"),
                        rs.getString("FullName"),
                        rs.getDate("DOB"),
                        rs.getString("Phone"),
                        rs.getString("Email"),
                        rs.getString("Password"),
                        rs.getString("Address"),
                        rs.getBoolean("Status"),
                        getEmployeeById(rs.getString("ManagerId")),
                        rs.getString("Description")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
