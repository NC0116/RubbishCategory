package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 垃圾实体类
 * @author llq
 *
 */
@Component
public class Rubbish {
	private Long id;//id，设置自增
	private String name;//垃圾名称
	private Long categoryId;//所属分类ID
	private RubbishCategory rubbishCategory;//所属分类
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
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public RubbishCategory getRubbishCategory() {
		return rubbishCategory;
	}
	public void setRubbishCategory(RubbishCategory rubbishCategory) {
		this.rubbishCategory = rubbishCategory;
	}
	
	
}
