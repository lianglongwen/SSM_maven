package com.llw.service.impl;

import com.llw.dao.ShopDao;
import com.llw.model.Shop;
import com.llw.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("shopService")
public class ShopServiceImpl implements ShopService {
    @Autowired
    private ShopDao shopDao;
    @Override
    public List<Shop> getAllShop() {
        return shopDao.getAllShop();
    }

    @Override
    public void save(Shop shop) {
        shopDao.save(shop);
    }
}
