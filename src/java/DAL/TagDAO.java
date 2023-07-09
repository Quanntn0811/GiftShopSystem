/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Model.Tag;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Kojer
 */
public class TagDAO extends DBContext {

    public Tag getTagByID(int tagID, boolean status) {
        try {
            String sql = "SELECT *\n"
                    + "  FROM [Tags] Where TagId = ? and Status = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new Tag(tagID,
                        rs.getString("TagName"),
                        status,
                        rs.getString("Description"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TagDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Tag> getAll() {
        ArrayList<Tag> list = new ArrayList<>();
        try {
            String sql = "SELECT *\n"
                    + "  FROM [Tags]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Tag(rs.getInt("TagId"),
                        rs.getString("TagName"),
                        rs.getBoolean("Status"),
                        rs.getString("Description")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TagDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        TagDAO tDao = new TagDAO();
        ArrayList<Tag> tags = tDao.getAll();
        System.out.println(tags.size());
    }
}
