/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit4TestClass.java to edit this template
 */
package DAL;

import Model.Product;
import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;


public class ProductDAOTest {
    private ProductDAO dao = new ProductDAO();

    @Test
    public void testGetAll() {
        ArrayList<Product> list = dao.GetAll();
        assertNotNull(list);
        assertTrue(list.size() > 0);
    }

    @Test
    public void testGetProductByID() {
        Product pro = dao.getProductByID("P001");
        assertNotNull(pro.getName());
    }
    
}
