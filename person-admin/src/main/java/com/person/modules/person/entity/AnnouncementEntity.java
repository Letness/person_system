package com.person.modules.person.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

/**
 * 系统公告
 */
@TableName("b_announcement")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AnnouncementEntity {
    @TableId
    private Long id;
    private String name;
    private String content;
    private String createUser;
    @JsonFormat(pattern = "yyyy年MM月dd日 HH时mm分ss秒", timezone = "GTM_8")
    private LocalDateTime createTime;
    @JsonFormat(pattern = "yyyy年MM月dd日 HH时mm分ss秒", timezone = "GTM_8")
    private LocalDateTime updateTime;

}
