package com.kgc.service.impl;

import com.kgc.mapper.StudentinfoMapper;
import com.kgc.pojo.Studentinfo;
import com.kgc.service.StudentinfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service("studentinfoService")
public class StudentinfoServiceImpl implements StudentinfoService {
    @Resource
    StudentinfoMapper studentinfoMapper;
    @Override
    public List<Studentinfo> selectAll() {
        return studentinfoMapper.selectByExample(null);
    }

    @Override
    public Studentinfo selectById(int sid) {
        return studentinfoMapper.selectByPrimaryKey(sid);
    }

    @Override
    public void update(Studentinfo studentinfo) {
        studentinfoMapper.updateByPrimaryKey(studentinfo);
    }
}
