package com.nhnent.base.sample;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service(value = "sampleService")
public class SampleService {
    @Resource(name = "sampleMapper")
    private SampleMapper sampleMapper;
 
    public List<SampleVo> getAll() {
        return this.sampleMapper.getAll();
    }
 
    public SampleVo get(int sampleNo) {
        return this.sampleMapper.get(sampleNo);
    }
 
    public void add(SampleVo sampleVo) {
        this.sampleMapper.add(sampleVo);
    }
 
    public void update(SampleVo sampleVo) {
        this.sampleMapper.update(sampleVo);
    }
 
    public void delete(int sampleNo) {
        this.sampleMapper.delete(sampleNo);
    }
}
