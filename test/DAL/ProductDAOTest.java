package DAL;

import Model.Product;
import java.util.ArrayList;
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
