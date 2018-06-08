package com.lunchtasting.server.dao.activity;

import java.util.List;

import com.lunchtasting.server.orm.ibatis.GenericDAO;
import com.lunchtasting.server.po.lt.ActivityEnroll;

public interface ActivityEnrollDAO extends GenericDAO<ActivityEnroll> {

	/**
	 * 获得活动报名人总数
	 * @param activityId
	 * @return
	 */
	Integer getEnrollCount(Long activityId);
	
	/**
	 * 判断当前活动是否可以报名
	 * @param activityId
	 * @param userId
	 * @return
	 */
	Long getIsEnroll(Long activityId,Long userId);
	
	/**
	 * 判断某活动用户是否已经报名
	 * @param activityId
	 * @param userId
	 * @return
	 */
	Long getEnrollId(Long activityId,Long userId);
	
	/**
	 * 获得用户报名的活动总数
	 * @param userId
	 * @return
	 */
	Integer getUserEnrollerCount(Long userId);
	
	/**
	 * 获得用户报名的活动列表
	 * @param userId
	 * @return
	 */
	List queryUserEnrollerList(Long userId,Integer page,Integer pageSize);
}
