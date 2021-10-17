package com.ct.service;

import com.ct.dao.PressDAO;
import com.ct.pojo.Press;

import java.util.List;

public class PressService {
    PressDAO pressDAO = new PressDAO();

    public List<Press> pressSelect(){
        return pressDAO.pressSelect();
    }
}
