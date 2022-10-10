package org.top.laptopshop.servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import org.top.laptopshop.datasource.DataSourceFactory;
import org.top.laptopshop.datasource.IShopLaptopDataSource;
import org.top.laptopshop.datasource.models.Image;
import org.top.laptopshop.datasource.models.Laptop;

import javax.naming.NamingException;
import java.io.IOException;

@WebServlet(name = "LaptopServlet", value = "/LaptopServlet")
public class LaptopServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            DataSourceFactory factory = new DataSourceFactory();
            IShopLaptopDataSource dataSource = factory.getDataSource();

            Laptop[] laptops = dataSource.getAllLaptops().toArray(new Laptop[0]);
            Image[] previewImages = new Image[laptops.length];
            for (int i = 0; i < laptops.length; i++) {
                previewImages[i] = dataSource.getLaptopPreviewImage(laptops[i].getId());
            }
            HttpSession session = request.getSession();
            session.setAttribute("laptop", laptops);
            session.setAttribute("previews", previewImages);
            response.sendRedirect(request.getContextPath() + "/laptoplist.jsp");
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            DataSourceFactory factory = new DataSourceFactory();
            IShopLaptopDataSource dataSource = factory.getDataSource();

            int pk = Integer.parseInt(request.getParameter("pk"));
            Laptop laptop = dataSource.getLaptopById(pk);

            Image[] laptopImages = dataSource.getLaptopImages(pk).toArray(new Image[0]);

            HttpSession session = request.getSession();
            session.setAttribute("laptop", laptop);
            session.setAttribute("images", laptopImages);
            response.sendRedirect(request.getContextPath() + "/laptopInfo.jsp");
        } catch (NamingException e) {
            throw new RuntimeException(e);
        }
    }
}
