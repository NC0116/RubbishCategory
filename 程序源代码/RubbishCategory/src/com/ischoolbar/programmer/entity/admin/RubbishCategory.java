package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 垃圾分类实体类
 * @author llq
 *
 */
@Component
public class RubbishCategory {
	private Long id;//id，设置自增
	private String name;//垃圾分类名称
	private String explain;//解释说明
	private String require;//处置要求
	private String common;//常见垃圾
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public String getRequire() {
		return require;
	}
	public void setRequire(String require) {
		this.require = require;
	}
	public String getCommon() {
		return common;
	}
	public void setCommon(String common) {
		this.common = common;
	}
	
	
}
