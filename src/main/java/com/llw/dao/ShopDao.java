package com.llw.dao;

import com.llw.model.Shop;

import java.util.List;

public interface ShopDao {

    List<Shop> getAllShop();

    void save(Shop shop);
}
