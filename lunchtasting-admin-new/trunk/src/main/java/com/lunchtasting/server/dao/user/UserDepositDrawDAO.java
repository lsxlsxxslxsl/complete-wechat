package com.lunchtasting.server.dao.user;

import java.util.List;

import com.lunchtasting.server.orm.ibatis.GenericDAO;
import com.lunchtasting.server.po.lt.UserDepositDraw;

public interface UserDepositDrawDAO extends GenericDAO<UserDepositDraw> {

	/**
	 * 查询用户退款记录
	 * @param userId
	 * @param status
	 * @param beginTime
	 * @param endTime
	 * @param page
	 * @param pageSize
	 * @return
	 */
	List queryDrawList(Long userId,Integer status,String beginTime,String endTime,Integer page,Integer pageSize);
	
	/**
	 * 查询用户退款总数
	 * @param userId
	 * @param status
	 * @param beginTime
	 * @param endTime
	 * @return
	 */
	Integer getDrawCount(Long userId,Integer status,String beginTime,String endTime);
	
	/**
	 * 修改退款记录状态错误
	 * @param drawId
	 * @return
	 */
	Integer updateStatusError(Long drawId);
	
	/**
	 * 修改退款记录状态退款成功
	 * @param drawId
	 * @return
	 */
	Integer updateStatusSuccess(Long drawId);
}
