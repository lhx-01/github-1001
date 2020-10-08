package com.kgc.service;

import com.kgc.pojo.Bills;
import com.kgc.pojo.BillsExample;


import java.util.List;

public interface billsService {
    List<Bills> selectByExample2(BillsExample example);
    int insert(Bills record);
}
