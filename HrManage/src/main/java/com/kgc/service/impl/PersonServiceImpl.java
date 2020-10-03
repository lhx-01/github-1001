package com.kgc.service.impl;

import com.kgc.mapper.PersonMapper;
import com.kgc.pojo.Person;
import com.kgc.service.PersonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("personService")
public class PersonServiceImpl implements PersonService {
    @Resource
    PersonMapper personMapper;
    @Override
    public List<Person> selectAll() {
        return personMapper.selectByExample(null);
    }

    @Override
    public void add(Person person) {
        personMapper.insert(person);
    }

    @Override
    public int delete(int id) {
        int i=personMapper.deleteByPrimaryKey(id);
        return i;
    }
}
