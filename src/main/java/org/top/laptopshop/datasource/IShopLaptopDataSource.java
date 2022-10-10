package org.top.laptopshop.datasource;

import org.top.laptopshop.datasource.models.Image;
import org.top.laptopshop.datasource.models.Laptop;

import java.util.List;

public interface IShopLaptopDataSource {
    List<Laptop> getAllLaptops();

    Laptop getLaptopById(int laptopId);

    List<Image> getLaptopImages(int laptopId);

    Image getLaptopPreviewImage(int laptopId);
}
