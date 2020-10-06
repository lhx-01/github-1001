package com.kgc.service;

import com.kgc.pojo.Projectinfo;

import java.util.List;

public interface ProjectinfoService {
    List<Projectinfo> selectAll(int type);

    Projectinfo selectById(Integer id);

    int upd(Projectinfo projectinfo);
}
