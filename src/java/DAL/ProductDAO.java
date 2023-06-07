package DAL;

import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO extends DBContext{
    private CategoryDAO ctgDAO = new CategoryDAO();
    
    public ArrayList<Product> GetAll(){
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM PRODUCTS";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getString("ProductId"),
                        rs.getString("Name"),
                        rs.getDouble("Price"),
                        rs.getInt("Quantity"),
                        rs.getBoolean("Status"),
                        rs.getString("ClassName"),
                        rs.getString("ClassName"),
                        getProductByID(rs.getString("ParentId")),
                        ctgDAO.getCategoryByID(rs.getInt("CategoryId")),
                        rs.getBoolean("IsParent")
                        ));
            }
        } catch (Exception e) {
            System.out.println("get list categories");
        }
        return list;
    }
    
    
    public Product getProductByID(String ProductID) {
        try {
            String sql = "SELECT * FROM PRODUCTS"
                    + " WHERE ProductId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, ProductID);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return new Product(
                        rs.getString("ProductId"),
                        rs.getString("Name"),
                        rs.getDouble("Price"),
                        rs.getInt("Quantity"),
                        rs.getBoolean("Status"),
                        rs.getString("ClassName"),
                        rs.getString("ClassName"),
                        getProductByID(rs.getString("ParentId")),
                        ctgDAO.getCategoryByID(rs.getInt("CategoryId")),
                        rs.getBoolean("IsParent")
                        );
            }
        } catch (Exception e) {
            System.out.println("get category by id");
        }
        return null;
    }
}
