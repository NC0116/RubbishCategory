package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.RubbishDao;
import com.ischoolbar.programmer.entity.admin.Rubbish;
import com.ischoolbar.programmer.service.admin.RubbishService;
/**
 * À¬»ø·ÖÀàserviceimpl
 * @author llq
 *
 */
@Service
public class RubbishServiceImpl implements RubbishService {

	@Autowired
	private RubbishDao rubbishDao;

	@Override
	public List<Rubbish> findByName(String name) {
		// TODO Auto-generated method stub
		return rubbishDao.findByName(name);
	}

	@Override
	public int add(Rubbish rubbish) {
		// TODO Auto-generated method stub
		return rubbishDao.add(rubbish);
	}

	@Override
	public int edit(Rubbish rubbish) {
		// TODO Auto-generated method stub
		return rubbishDao.edit(rubbish);
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return rubbishDao.delete(id);
	}

	@Override
	public List<Rubbish> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return rubbishDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return rubbishDao.getTotal(queryMap);
	}

	
	
	

}
