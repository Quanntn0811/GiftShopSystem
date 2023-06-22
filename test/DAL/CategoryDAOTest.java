package DAL;

import Model.Category;
import java.util.ArrayList;
import org.junit.Test;
import static org.junit.Assert.*;

public class CategoryDAOTest {
    private CategoryDAO dao = new CategoryDAO();
    
    @Test
    public void testGetAll() {
        ArrayList<Category> list = dao.getAll();
        assertNotNull(list);
        assertTrue(!list.isEmpty());
    }

    @Test
    public void testGetCategoryByID() {
        Category category = dao.getCategoryByID(1);
        assertNotNull(category.getCategoryName());
    }
}
