package DAL;

import Model.Role;
import Model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO extends DBContext {
    
    public void insertUser(User user) {
        try {
            String sql = "INSERT INTO [User]\n"
                    + "           ([FullName]\n"
                    + "           ,[Email]\n"
                    + "           ,[Password]\n"
                    + "           ,[Phone]\n"
                    + "           ,[DOB]\n"
                    + "           ,[Address])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?\n"
                    + "           ,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user.getFullName());
            stm.setString(2, user.getEmail());
            stm.setString(3, user.getPassword());
            stm.setString(4, user.getPhone());
            stm.setDate(5, user.getDob());
            stm.setString(6, user.getAddress());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public User doLogin(String email, String pwd) {
        try {
            String sql = "SELECT [UserID]\n"
                    + "      ,[FullName]\n"
                    + "      ,[Email]\n"
                    + "      ,[Password]\n"
                    + "      ,[Phone]\n"
                    + "      ,[DOB]\n"
                    + "      ,[Address]\n"
                    + "      ,[Avatar]\n"
                    + "      ,[RoleID]\n"
                    + "      ,[ManagerID]\n"
                    + "      ,[Status]\n"
                    + "      ,[Description]\n"
                    + "  FROM [User] Where Email = ? and Password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, pwd);
            ResultSet rs = stm.executeQuery();

            RoleDAO rDao = new RoleDAO();

            if (rs.next()) {

                Role role = rDao.getRoleByID(rs.getInt("RoleID"));
                User manager = getUserByID(rs.getInt("ManagerID"));

                return new User(rs.getInt("UserID"),
                        rs.getString("FullName"),
                        rs.getString("Email"),
                        rs.getString("Phone"),
                        rs.getDate("DOB"),
                        rs.getString("Address"),
                        rs.getString("Avatar"),
                        role,
                        manager,
                        rs.getBoolean("Status"),
                        rs.getString("Description"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    private User getUserByID(int userID) {
        return null;
    }
}