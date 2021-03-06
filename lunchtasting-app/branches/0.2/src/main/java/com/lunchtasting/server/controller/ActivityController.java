package com.lunchtasting.server.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lunchtasting.server.biz.activity.ActivityBIZ;
import com.lunchtasting.server.biz.activity.ActivityCommentBIZ;
import com.lunchtasting.server.biz.activity.ActivityEnrollBIZ;
import com.lunchtasting.server.helper.EncryptAuth;
import com.lunchtasting.server.helper.MapResult;
import com.lunchtasting.server.helper.VariableConfig;
import com.lunchtasting.server.po.lt.Activity;
import com.lunchtasting.server.util.Utils;
import com.lunchtasting.server.util.ValidatorHelper;

@Controller
@RequestMapping("/activity")
public class ActivityController {
	
	@Autowired
	private ActivityBIZ activityBIZ;
	@Autowired
	private ActivityCommentBIZ commentBIZ;
	@Autowired
	private ActivityEnrollBIZ enrollBIZ;
	
	/**
	 * 活动列表
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/list")
	@ResponseBody
	public Object list(HttpServletRequest request) throws Exception {
		String page = request.getParameter("page");
		
		int pPage = 1;
		if(ValidatorHelper.isNumber(page)){
			pPage = Integer.parseInt(page);
			if(pPage < 1){
				pPage = 1;
			}
		}
		
		try {
			//long userId = EncryptAuth.getUserId(request);
			
			/**
			 * 报文返回
			 */
			Map dataMap = new HashMap();
			dataMap.put("list", activityBIZ.queryActivityList((pPage-1)*VariableConfig.PAGE_SIZE, VariableConfig.PAGE_SIZE));
			dataMap.put("total_page",Utils.getTotalPage(activityBIZ.getActivityCount(),VariableConfig.PAGE_SIZE));
			dataMap.put("current_page", pPage);	
			
		} catch (Exception e) {
			return MapResult.build(MapResult.CODE_SYS_ERROR, MapResult.MESSAGE_ERROR, null, request);
		}
		return MapResult.build(MapResult.CODE_FAILURE, MapResult.MESSAGE_FAILURE, null, request);
	}
	
	@RequestMapping(value = "/detail")
	@ResponseBody
	public Object detail(HttpServletRequest request) throws Exception {
		return null;
	}
	
	/**
	 * 报名
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/enroll/add")
	@ResponseBody
	public Object enrollAdd(HttpServletRequest request) throws Exception {
		String aId = request.getParameter("activity_id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String remark = request.getParameter("remark");
		String code = request.getParameter("code");
		if(!ValidatorHelper.isNumber(aId) || !ValidatorHelper.isNumber(age) 
				|| ValidatorHelper.isEmpty(name) || ValidatorHelper.isEmpty(phone)
				|| ValidatorHelper.isEmpty(sex) || ValidatorHelper.isEmpty(code)){
			return MapResult.build(MapResult.CODE_PARAM_ERROR, MapResult.MESSAGE_PARAMETER, request);
		}
		
		
		try {
			long userId = EncryptAuth.getUserId(request);
			long activityId = Long.parseLong(aId);
			
			/**
			 * 判断用户已经报名过
			 */
			Long enrollId = enrollBIZ.getEnrollId(activityId, userId);
			if(null != enrollId){
				return MapResult.build(MapResult.CODE_PARAM_ERROR, "你已经报过名啦！", request);
			}
			
			/**
			 * 判断是否可以报名
			 */
			boolean checkEnroll = enrollBIZ.checkIsEnroll(activityId, userId);
			if(checkEnroll == false){
				return MapResult.build(MapResult.CODE_PARAM_ERROR, "当前活动不能报名！", request);
			}
			
			boolean result = enrollBIZ.createEnroll(userId, activityId, name, phone);
			if(result){
				return MapResult.build(MapResult.CODE_SUCCESS, MapResult.MESSAGE_SUCCESS, request);
			}
		} catch (Exception e) {
			return MapResult.build(MapResult.CODE_SYS_ERROR, MapResult.MESSAGE_ERROR, request);
		}
		
		return MapResult.build(MapResult.CODE_FAILURE, MapResult.MESSAGE_FAILURE, request);
	}
	
	/**
	 * 添加获得评论/回复
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/comment/add")
	@ResponseBody
	public Object commentAdd(HttpServletRequest request) throws Exception {
		String aId = request.getParameter("activity_id");
		String content = request.getParameter("content");
		String imgArray = request.getParameter("img_array");
		String parentId = request.getParameter("parent_id");
		String parentUserId = request.getParameter("parent_user_id");
		
		if(!ValidatorHelper.isNumber(aId) || ValidatorHelper.isEmpty(content) 
				|| ValidatorHelper.isEmpty(imgArray)){
			return MapResult.build(MapResult.CODE_PARAM_ERROR, MapResult.MESSAGE_PARAMETER, request);
		}
		
		try {
			long userId = EncryptAuth.getUserId(request);
			long activityId = Long.parseLong(aId);
			
			Activity activity = activityBIZ.getById(activityId);
			if(activity == null){
				return MapResult.build(MapResult.CODE_PARAM_ERROR, MapResult.MESSAGE_PARAMETER, request);
			}
			
			/**
			 * 添加评论
			 */
			Boolean result = commentBIZ.createComment(activityId,userId, content, imgArray, parentId, parentUserId);
			if(result){
				return MapResult.build(MapResult.CODE_SUCCESS, MapResult.MESSAGE_SUCCESS, request);
			}
		} catch (Exception e) {
			return MapResult.build(MapResult.CODE_SYS_ERROR, MapResult.MESSAGE_ERROR, request);
		}
		return MapResult.build(MapResult.CODE_FAILURE, MapResult.MESSAGE_FAILURE, request);
	}
	
	/**
	 * 活动评论列表
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/comment/list")
	@ResponseBody
	public Object commentList(HttpServletRequest request) throws Exception {
		String aId = request.getParameter("activity_id");
		String page = request.getParameter("page");
		if(!ValidatorHelper.isNumber(aId)){
			return MapResult.build(MapResult.CODE_PARAM_ERROR, MapResult.MESSAGE_PARAMETER, request);
		}
		
		int pPage = 1;
		if(ValidatorHelper.isNumber(page)){
			pPage = Integer.parseInt(page);
			if(pPage < 1){
				pPage = 1;
			}
		}
		
		try {
			long userId = EncryptAuth.getUserId(request);
			long activityId = Long.parseLong(aId);
			
			/**
			 * 判断活动是否存在
			 */
			Activity activity = activityBIZ.getById(activityId);
			if(activity == null){
				return MapResult.build(MapResult.CODE_PARAM_ERROR, MapResult.MESSAGE_PARAMETER, request);
			}
			
			/**
			 * 报文返回
			 */
			Map dataMap = new HashMap();
			dataMap.put("list", commentBIZ.queryCommentList(activityId,activity.getUserId(), (pPage-1)*VariableConfig.PAGE_SIZE, VariableConfig.PAGE_SIZE));
			dataMap.put("total_page",Utils.getTotalPage(commentBIZ.getCommentCount(activityId),VariableConfig.PAGE_SIZE));
			dataMap.put("current_page", pPage);	
			return MapResult.build(MapResult.CODE_FAILURE, MapResult.MESSAGE_FAILURE,dataMap, request);
		} catch (Exception e) {
			return MapResult.build(MapResult.CODE_SYS_ERROR, MapResult.MESSAGE_ERROR, request);
		}
	}
}
