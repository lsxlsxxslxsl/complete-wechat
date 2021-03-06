package com.lunchtasting.server.dao.user.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import com.lunchtasting.server.dao.user.UserDAO;
import com.lunchtasting.server.dao.user.UserDeviceDAO;
import com.lunchtasting.server.orm.ibatis.GenericDAOSupport;
import com.lunchtasting.server.po.lt.User;
import com.lunchtasting.server.util.ValidatorHelper;

@Repository
public class UserDAOImpl extends GenericDAOSupport<Long, User> implements UserDAO {

	@Override
	protected Class<?> getObjectClass() {
		return User.class;
	}

	@Override
	protected String getTableName() {
		return "user";
	}

	@Override
	public User getByPhoneAndPwd(String phone, String pwd) {
		if(StringUtils.isEmpty(phone) || StringUtils.isEmpty(pwd)){
			return null;
		}
		
		Map map = new HashMap();
		map.put("phone", phone);
		map.put("pwd", pwd);
		return (User) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getByPhoneAndPwd", map);
	}
	
	@Override
	public User getByAccountAndPwd(String account, String pwd) {
		if(StringUtils.isEmpty(account) || StringUtils.isEmpty(pwd)){
			return null;
		}
		
		Map map = new HashMap();
		map.put("account", account);
		map.put("pwd", pwd);
		return (User) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getByAccountAndPwd", map);
	}

	@Override
	public Long getUserIdByPhone(String phone) {
		if(ValidatorHelper.isEmpty(phone)){
			return null;
		}
		
		Map map = new HashMap();
		map.put("phone", phone);
		return (Long) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getUserIdByPhone", map);	
	}

	@Override
	public Integer updatePwd(Long userId, String pwd) {
		if(ValidatorHelper.isEmpty(userId) || ValidatorHelper.isEmpty(pwd)){
			return 0;
		}
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("pwd", pwd);
		return (Integer) getSqlMapClientTemplate().update(getNamespace() + ".updatePwd", map);	
	}

	@Override
	public Integer updateLoginTime(Long userId) {
		if(ValidatorHelper.isEmpty(userId)){
			return 0;
		}
		Map map = new HashMap();
		map.put("userId", userId);
		return getSqlMapClientTemplate().update(getNamespace() + ".updateLoginTime", map);	
	}

	@Override
	public void createSuggest(Long id,Long userId, String content) {
		if(ValidatorHelper.isEmpty(id) || ValidatorHelper.isEmpty(userId) || ValidatorHelper.isEmpty(content)){
			return;
		}
		
		Map map = new HashMap();
		map.put("id", id);
		map.put("userId", userId);
		map.put("content", content);
		getSqlMapClientTemplate().insert(getNamespace() + ".createSuggest", map);	
	}

	@Override
	public Integer updateUserInfo(Long userId,String name,String imgUrl
			,Integer sex,String birth,String profession,String feeling,String signature) {
		if(userId == null){
			return 0;
		}
		
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("name", name);
		map.put("imgUrl", imgUrl);
		map.put("sex", sex);
		map.put("birth", birth);
		map.put("profession", profession);
		map.put("feeling", feeling);
		map.put("signature", signature);
		return getSqlMapClientTemplate().update(getNamespace() + ".updateUserInfo", map);		
	}

	@Override
	public Map getUserDetail(Long userId) {
		if(userId == null){
			return null;
		}
		Map map = new HashMap();
		map.put("userId", userId);
		return (Map) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getUserDetail", map);	
	}

	@Override
	public Map getEditInfo(Long userId) {
		if(userId == null){
			return null;
		}
		Map map = new HashMap();
		map.put("userId", userId);
		return (Map) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getEditInfo", map);	
	}

	@Override
	public Map getUserMatch(Long userId) {
		if(userId == null){
			return null;
		}
		Map map = new HashMap();
		map.put("userId", userId);
		return (Map) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getUserMatch", map);	
	}

	@Override
	public Map getUserMssagePush(Long userId) {
		if(userId == null){
			return null;
		}
		
		Map map = new HashMap();
		map.put("userId", userId);
		return (Map) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getUserMssagePush", map);		
	}

	@Override
	public Map getUserInit(Long userId) {
		if(userId == null){
			return null;
		}
		
		Map map = new HashMap();
		map.put("userId", userId);
		return (Map) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getUserInit", map);		
	}
}
