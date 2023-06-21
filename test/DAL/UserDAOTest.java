package DAL;

import Model.User;
import org.junit.Test;
import static org.junit.Assert.*;

public class UserDAOTest {

    private UserDAO dao = new UserDAO();
    private String email = "test@gmail.com";
    private String pwd = "202cb962ac59075b964b07152d234b70";
    private String emailID = "106099637354725921371";

    @Test
    public void testDoLogin() {
        User user = dao.doLogin(email, pwd);
        assertNotNull(user);
    }

    @Test
    public void testInsert() {
    }

    @Test
    public void testGetUserGoogle() {
        User user = dao.getUserGoogle(emailID);
        assertNotNull(user);
    }

    @Test
    public void testIsUserExist() {
        assertTrue(dao.isUserExist(email));
    }

}
