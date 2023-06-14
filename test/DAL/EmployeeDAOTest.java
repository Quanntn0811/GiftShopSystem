package DAL;

import Model.Employee;
import org.junit.Test;
import static org.junit.Assert.*;

public class EmployeeDAOTest {
    private EmployeeDAO dao = new EmployeeDAO();
    
    @Test
    public void testGetEmployeeById() {
        Employee emp = dao.getEmployeeById("E001");
        assertNotNull(emp);
    }

    @Test
    public void testGetEmployeeByEmailAndPwd() {
        System.out.println("getEmployeeByEmailAndPwd");
        Employee e = new Employee();
        e.setEmail("AnhNH@gmail.com");
        e.setPassword("123");
        Employee result = dao.getEmployeeByEmailAndPwd(e);
        assertNotNull(result);
    }
    
}
