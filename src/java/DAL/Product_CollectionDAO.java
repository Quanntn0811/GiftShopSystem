/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Kojer
 */
public class Product_CollectionDAO extends DBContext{
    public void insert(int productID, int collectionID) {
        try {
            String sql = "INSERT INTO [dbo].[Product_Collection]\n"
                    + "           ([ProductId]\n"
                    + "           ,[CollectionId]\n"
                    + "           ,[DeleteFlag])\n"
                    + "     VALUES\n"
                    + "           (?\n"
                    + "           ,?\n"
                    + "           ,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, productID);
            stm.setInt(2, collectionID);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Product_CollectionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
