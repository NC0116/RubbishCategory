package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * ��������ʵ����
 * @author llq
 *
 */
@Component
public class RubbishCategory {
	private Long id;//id����������
	private String name;//������������
	private String explain;//����˵��
	private String require;//����Ҫ��
	private String common;//��������
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
