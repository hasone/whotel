package com.whotel.meal.service;

import com.google.common.collect.Lists;
import com.whotel.hotel.entity.Hotel;
import com.whotel.hotel.service.HotelService;
import com.whotel.meal.dao.DishesDao;
import com.whotel.meal.entity.*;
import com.whotel.thirdparty.jxd.api.JXDMealService;
import com.whotel.thirdparty.jxd.mode.MealDishesRequestQuery;
import com.whotel.thirdparty.jxd.mode.MealDishesSuiteQuery;
import com.whotel.thirdparty.jxd.mode.MealDishesUnitQuery;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by limingan on 2017/4/21.
 */
@Service
public class DishesService {

    private static final Logger logger = Logger.getLogger(DishesCategoryService.class);

    @Autowired
    private DishesDao dishesDao;
    @Autowired
    private HotelService hotelService;
    @Autowired
    private DishesRequestService dishesRequestService;

    public Dishes getDishesById(String id) {
        return dishesDao.get(id);
    }

    public List<Dishes> getByCate(DishesCategory cat) {
        Map<String, Serializable> properties = new HashMap<>();
        properties.put("companyId", cat.getCompanyId());
        properties.put("hotelCode", cat.getHotelCode());
        properties.put("restaurantId", cat.getRestaurantId());
        properties.put("dishno1", cat.getId());
        return dishesDao.findByProperties(properties);
    }

    public List<Dishes> syncSuite(Restaurant restaurant) {
        List<Dishes> dishesList = this.getSuite(restaurant);
        this.saveDishesList(dishesList);
        return dishesList;
    }


    public List<Dishes> getSuite(Restaurant restaurant) {
        List<Dishes> result = Lists.newArrayList();
        try {
            Hotel hotel = hotelService.getHotel(restaurant.getCompanyId(), restaurant.getHotelCode());
            JXDMealService jxdMealService = new JXDMealService();
            MealDishesSuiteQuery query = new MealDishesSuiteQuery();
            query.setHotelCode(restaurant.getHotelCode());
            query.setLastQueryTime("2010-01-01");
            result = jxdMealService.loadSuiteItem(query, restaurant, hotel.getMealUrl());
        } catch (Exception e) {
            e.printStackTrace();
            logger.error("DishesActionService getDishesAction", e);
        }
        return result;
    }

    public void saveDishes(Dishes dishes) {
        dishesDao.save(dishes);
    }

    public void saveDishesList(List<Dishes> dishesList) {
        for (Dishes dishes : dishesList) {
            this.saveDishes(dishes);
        }
    }


    public void syncDishesUnit(String dishesId) throws Exception {
        JXDMealService jxdMealService = new JXDMealService();
        Dishes dishes = dishesDao.get(dishesId);
        String dishNo = dishes.getDishNo();
        String hotelCode = dishes.getHotelCode();

        MealDishesUnitQuery query = new MealDishesUnitQuery();
        query.setDishNo(dishNo);
        query.setHotelCode(hotelCode);
        query.setLastQueryTime("2010-01-01");
        Hotel hotel = hotelService.getHotel(dishes.getCompanyId(), hotelCode);

        Float price = dishes.getPrice();
        if (null == price) {
            price = 0F;
        }

        List<DishesUnit> list = jxdMealService.loadDishesUnit(query, hotel.getMealUrl(), price);
        dishes.setUnitList(list);
        dishesDao.save(dishes);
    }

    public void syncDishesRequest(String hotelId) throws Exception {
        Hotel hotel = hotelService.getHotelById(hotelId);

        MealDishesRequestQuery query = new MealDishesRequestQuery();
        query.setHotelCode(hotel.getCode());
        JXDMealService jxdMealService = new JXDMealService();
        List<DishesRequest> list = jxdMealService.loadDishesRequest(query, hotel.getMealUrl());

        HotelDishesRequest request = dishesRequestService.getByHotelId(hotelId);
        if (null == request) {
            request = new HotelDishesRequest();
            request.setCompanyId(hotel.getCompanyId());
            request.setHotelId(hotelId);
            request.setHotelCode(hotel.getCode());
        }
        request.setList(list);
        dishesRequestService.save(request);

    }
}
