package com.person.modules.person.service;

import com.person.common.utils.PageUtils;
import com.person.modules.person.entity.AnnouncementEntity;

import java.util.Map;

/**
 * 公告
 */
public interface AnnouncementService {
    void saveAnnouncement(AnnouncementEntity announcement);

    void updateAnnouncement(AnnouncementEntity announcement);

    void delAnnouncementById(Long[] ids);

    PageUtils queryPage(Map<String, Object> params);

    AnnouncementEntity info(Long id);
}
