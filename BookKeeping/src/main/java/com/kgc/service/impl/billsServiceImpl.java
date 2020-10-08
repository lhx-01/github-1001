package com.kgc.service.impl;

import com.kgc.mapper.BillsMapper;
import com.kgc.pojo.Bills;
import com.kgc.pojo.BillsExample;
import com.kgc.service.billsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("billsService")
public class billsServiceImpl implements billsService {
    @Resource
    BillsMapper billsMapper;

    @Override
    public List<Bills> selectByExample2(BillsExample example) {
        return billsMapper.selectByExample2(example);
    }

    @Override
    public int insert(Bills record) {
        return billsMapper.insert(record);
    }
}
