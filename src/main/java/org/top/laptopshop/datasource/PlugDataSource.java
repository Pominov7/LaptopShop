package org.top.laptopshop.datasource;

import org.top.laptopshop.datasource.models.Image;
import org.top.laptopshop.datasource.models.Laptop;

import java.util.Arrays;
import java.util.List;

public class PlugDataSource implements IShopLaptopDataSource {
    private static final List<Laptop> plugLaptopsData = Arrays.asList(
            new Laptop(1, "HP", "200 series", 17500.0),
            new Laptop(2, "HP", "Elite Dragonfly", 114153.0),
            new Laptop(3, "HP", "EliteBook", 46000.0),
            new Laptop(4, "HP", "Omen", 84436.0),
            new Laptop(5, "HP", "Pavilion", 30500.0),
            new Laptop(6, "HP", "ProBook", 27999.0),
            new Laptop(7, "HP", "ZBook", 79000.0),
            new Laptop(8, "HP", "ZBook 15 Create G7", 109000.0)

    );

    private static final List<Image> plugImagesData = Arrays.asList(
            new Image(1, "images/HP_200_Series2.jpg", 1),
            new Image(2, "images/c06453639.png", 2),
            new Image(3, "images/EliteBook.jpg", 3),
            new Image(4, "images/Omen_Series.jpg", 4),
            new Image(5, "images/Omen_Series.jpg", 5),
            new Image(6, "images/c06352728.png", 6),
            new Image(7, "images/ZBook_Series1.jpg", 7),
            new Image(8, "images/Mobilnaya-rabochaya-stantsiya-HP-ZBook-15-G6.png", 8)
    );

    public PlugDataSource() {
    }

    @Override
    public List<Laptop> getAllLaptops() {
        return plugLaptopsData;
    }

    @Override
    public Laptop getLaptopById(int laptopId) {
        return plugLaptopsData.stream().filter(laptop -> laptop.getId() == laptopId).findFirst().get();
    }

    @Override
    public List<Image> getLaptopImages(int laptopId) {
        return plugImagesData.stream().filter(image -> image.getLaptopId() == laptopId).toList();
    }

    @Override
    public Image getLaptopPreviewImage(int laptopId) {
        return plugImagesData.stream().filter(image -> image.getLaptopId() == laptopId).findFirst().get();
    }
}