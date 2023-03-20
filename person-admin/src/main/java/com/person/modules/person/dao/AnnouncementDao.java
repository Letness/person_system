package com.person.modules.person.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.person.modules.person.entity.AnnouncementEntity;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface AnnouncementDao extends BaseMapper<AnnouncementEntity> {
}