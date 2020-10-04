package com.kgc.service;

import com.kgc.pojo.Studentinfo;

import java.util.List;

public interface StudentinfoService {
    List<Studentinfo> selectAll();
    public Studentinfo selectById(int sid);
    void update(Studentinfo studentinfo);
}
