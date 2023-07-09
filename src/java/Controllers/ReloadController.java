
package Controllers;

import DAL.OrderDAO;
import DAL.ProductDAO;
import Model.Order;
import Model.OrderDetails;
import Model.Product;
import Model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 *
 * @author dell
 */
public class ReloadController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        double totalPrice = 0.0;

        HttpSession sesion = request.getSession();
        ProductDAO pDao = new ProductDAO();

        User acc = (User) sesion.getAttribute("account");

        ArrayList<OrderDetails> cart = new ArrayList<>();

        //declare cookies
        String cookieName = "cart";
        String priceName = "totalP";
        if (acc != null) {
            cookieName += acc.getUserID();
            priceName += acc.getUserID();
        }

        // Get the cookies from the request
        Cookie[] cookies = request.getCookies();

        String cartValue = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(cookieName)) {
                    cartValue = cookie.getValue();
                }
            }
        }
        //check if cookies exist or not
        if (!cartValue.equals("")) {
            String[] products = cartValue.split("_");
            for (String product : products) {
                //check the length of the product cookie
                if (product.length() != 0) {
                    String[] proQua = product.split("-");
                    OrderDetails order = new OrderDetails();
                    Product pro = pDao.getProductDetailsByID(Integer.parseInt(proQua[0]), true);
                    order.setProduct(pro);
                    order.setQuantity(Integer.parseInt(proQua[1]));
                    cart.add(order);

                    totalPrice += pro.getPrice() * order.getQuantity();
                }
            }

        }

        Cookie priceCookie = new Cookie(priceName, String.valueOf(totalPrice));
        response.addCookie(priceCookie);

        request.getSession().setAttribute("cart", cart);
        request.getSession().setAttribute("totalPrice", totalPrice);

        ArrayList<Order> orderStatus = new ArrayList<>();
        //lay thong tin gio hang
        if (acc != null) {
            OrderDAO oDao = new OrderDAO();
            orderStatus = oDao.getOrdersByUser(acc.getUserID());
        }
        request.getSession().setAttribute("orders", orderStatus);
    }
}
