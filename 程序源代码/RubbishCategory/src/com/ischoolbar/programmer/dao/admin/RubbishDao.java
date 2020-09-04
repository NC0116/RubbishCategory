package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Rubbish;

/**
 * À¬»ødao
 * @author llq
 *
 */
@Repository
public interface RubbishDao {
	public List<Rubbish> findByName(String name);
	public int add(Rubbish rubbish);
	public int edit(Rubbish rubbish);
	public int delete(Long id);
	public List<Rubbish> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
}
