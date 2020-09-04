package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.RubbishCategoryDao;
import com.ischoolbar.programmer.entity.admin.RubbishCategory;
import com.ischoolbar.programmer.service.admin.RubbishCategoryService;
/**
 * 垃圾分类用户serviceimpl
 * @author llq
 *
 */
@Service
public class RubbishCategoryServiceImpl implements RubbishCategoryService {

	@Autowired
	private RubbishCategoryDao rubbishCategoryDao;

	@Override
	public RubbishCategory findByName(String name) {
		// TODO Auto-generated method stub
		return rubbishCategoryDao.findByName(name);
	}

	@Override
	public int add(RubbishCategory rubbishCategory) {
		// TODO Auto-generated method stub
		return rubbishCategoryDao.add(rubbishCategory);
	}

	@Override
	public int edit(RubbishCategory rubbishCategory) {
		// TODO Auto-generated method stub
		return rubbishCategoryDao.edit(rubbishCategory);
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return rubbishCategoryDao.delete(id);
	}

	@Override
	public List<RubbishCategory> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return rubbishCategoryDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return rubbishCategoryDao.getTotal(queryMap);
	}

	@Override
	public List<RubbishCategory> findByCommon(String name) {
		// TODO Auto-generated method stub
		return rubbishCategoryDao.findByCommon(name);
	}
	
	

}
