package com.ct.service;

import com.ct.dao.AuthorDAO;
import com.ct.pojo.Author;

import java.util.List;

public class AuthorService {
    AuthorDAO authorDAO = new AuthorDAO();

    public List<Author> authorSelect(){
        return authorDAO.authorSelect();
    }
}
