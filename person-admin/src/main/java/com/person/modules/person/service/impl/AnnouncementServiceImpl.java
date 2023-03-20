package com.person.modules.person.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.person.common.utils.Constant;
import com.person.common.utils.PageUtils;
import com.person.common.utils.Query;
import com.person.modules.person.dao.AnnouncementDao;
import com.person.modules.person.entity.AnnouncementEntity;
import com.person.modules.person.service.AnnouncementService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Map;

@Service("announcementService")
public class AnnouncementServiceImpl extends ServiceImpl<AnnouncementDao, AnnouncementEntity> implements AnnouncementService {


    @Override
    public void saveAnnouncement(AnnouncementEntity announcement) {
        baseMapper.insert(announcement);
    }

    @Override
    public void updateAnnouncement(AnnouncementEntity announcement) {
        baseMapper.updateById(announcement);
    }

    @Override
    public void delAnnouncementById(Long[] ids) {
        this.removeByIds(Arrays.asList(ids));
    }

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        String name = (String)params.get("name");
        String orderBy = (String)params.get("orderBy");
        IPage<AnnouncementEntity> page = this.page(
                new Query<AnnouncementEntity>().getPage(params),
                new QueryWrapper<AnnouncementEntity>()
                        .like(StringUtils.isNotBlank(name), "name", name)
                        .orderByDesc(StringUtils.isNotBlank(orderBy), orderBy)
                        .apply(params.get(Constant.SQL_FILTER) != null, (String) params.get(Constant.SQL_FILTER)));
        return new PageUtils(page);
    }

    @Override
    public AnnouncementEntity info(Long id) {
        return this.baseMapper.selectById(id);
    }
}
