package com.ct.service;

import com.ct.dao.PersonDAO;
import com.ct.pojo.Person;

public class PersonService {
    PersonDAO personDAO = new PersonDAO();

    public int personRegister(Person person){
       return personDAO.personRegister(person);
    }

    public int personLogin(Person person){
       return personDAO.personLogin(person);
    }

    public int personCheckName(String name){
        return personDAO.personCheckName(name);
    }

    public int personCheckEmail(String email){
        return personDAO.personCheckEmail(email);
    }
}
