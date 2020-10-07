package com.kgc.service.impl;

import com.kgc.mapper.GoodsMapper;
import com.kgc.pojo.Goods;
import com.kgc.pojo.GoodsExample;
import com.kgc.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
    @Resource
    GoodsMapper goodsMapper;

    @Override
    public List<Goods> selectAll(int type) {
        GoodsExample example=new GoodsExample();
        GoodsExample.Criteria criteria=example.createCriteria();
        if(type==0){
            return goodsMapper.selectByExample(null);
        }else{
            criteria.andGoodsdistrictEqualTo(type);
        }
        List<Goods> goods = goodsMapper.selectByExample(example);
        return goods;
    }

    @Override
    public Goods selectById(int id) {
        return goodsMapper.selectByPrimaryKey(id);
    }

    @Override
    public void update(Goods goods) {
        goodsMapper.updateByPrimaryKey(goods);
    }
}
