package com.kgc.service;

import com.kgc.pojo.Goods;

import java.util.List;

public interface GoodsService {
    List<Goods> selectAll( int type);
    public Goods selectById(int id);
    void update(Goods goods);

}
