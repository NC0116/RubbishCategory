package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Rubbish;

/**
 * À¬»øservice
 * @author llq
 *
 */
@Service
public interface RubbishService {
	public List<Rubbish> findByName(String name);
	public int add(Rubbish rubbish);
	public int edit(Rubbish rubbish);
	public int delete(Long id);
	public List<Rubbish> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
}
