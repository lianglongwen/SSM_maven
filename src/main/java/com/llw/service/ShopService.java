package com.llw.service;

import com.llw.model.Shop;

import java.util.List;

public interface ShopService {
    List<Shop> getAllShop();

    void save(Shop shop);
}
