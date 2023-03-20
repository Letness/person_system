package com.person.modules.person.controller;

import com.person.common.utils.PageUtils;
import com.person.common.utils.R;
import com.person.modules.person.entity.AnnouncementEntity;
import com.person.modules.person.service.AnnouncementService;
import com.person.modules.sys.controller.AbstractController;
import com.person.modules.sys.entity.SysUserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.beans.BeanMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.Map;

@RestController
@RequestMapping("/person/announcement")
public class AnnouncementController extends AbstractController {

    @Autowired
    private AnnouncementService announcementService;

    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params) {
        PageUtils page = announcementService.queryPage(params);
        return R.ok().put("page", page);
    }

    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        return R.ok().put("announcement", announcementService.info(id));
    }

    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids) {
        announcementService.delAnnouncementById(ids);
        return R.ok();
    }

    @RequestMapping("/save")
    public R delete(@RequestBody AnnouncementEntity announcement) {
        SysUserEntity user = this.getUser();
        announcement.setCreateUser(user.getUsername());
        LocalDateTime now = LocalDateTime.now();
        announcement.setCreateTime(now);
        announcement.setUpdateTime(now);
        announcementService.saveAnnouncement(announcement);
        return R.ok();
    }

    @RequestMapping("/update")
    public R update(@RequestBody AnnouncementEntity announcement) {
        announcementService.updateAnnouncement(announcement);
        return R.ok();
    }
}
