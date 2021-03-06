package com.lunchtasting.server.dao.article.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.lunchtasting.server.dao.article.ArticleDAO;
import com.lunchtasting.server.orm.ibatis.GenericDAOSupport;
import com.lunchtasting.server.po.lt.Article;

@Repository
public class ArticleDAOImpl extends GenericDAOSupport<Long, Article> implements ArticleDAO {

	@Override
	protected Class<?> getObjectClass() {
		return Article.class;
	}

	@Override
	protected String getTableName() {
		return "article";
	}

	@Override
	public Integer getArticleCount() {
		return (Integer) getSqlMapClientTemplate().queryForObject(getNamespace() + ".getArticleCount");	
	}

	@Override
	public List queryArticleList(Integer page, Integer pageSize) {
		Map map = new HashMap();
		map.put("page", page);
		map.put("pageSize", pageSize);
        return getSqlMapClientTemplate().queryForList(getNamespace() + ".queryArticleList", map);
	}

}
