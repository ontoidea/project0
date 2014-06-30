package com.nhnent.base.sample;

import java.util.List;

import org.springframework.stereotype.Repository;

@Repository(value = "sampleMapper")
public interface SampleMapper {
    List<SampleVo> getAll();
 
    SampleVo get(int sampleNo);
 
    void add(SampleVo sampleVo);
 
    void update(SampleVo sampleVo);
 
    void delete(int sampleVo);
}

