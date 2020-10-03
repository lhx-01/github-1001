package com.kgc.service;

import com.kgc.pojo.Person;

import java.util.List;

public interface PersonService {
    List<Person> selectAll();
    void add(Person person);
    public int delete(int id);
}
