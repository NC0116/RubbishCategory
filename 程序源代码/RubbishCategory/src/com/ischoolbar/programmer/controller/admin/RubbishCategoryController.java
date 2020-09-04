package com.ischoolbar.programmer.controller.admin;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.RubbishCategory;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.RubbishCategoryService;

/**
 * ����������������
 * @author llq
 *
 */
@RequestMapping("/admin/rubbish_category")
@Controller
public class RubbishCategoryController {
	@Autowired
	private RubbishCategoryService rubbishCategoryService;
	
	/**
	 * ���������б�ҳ��
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("rubbish_category/list");
		return model;
	}
	
	/**
	 * ��ȡ���������б�
	 * @param page
	 * @param name
	 * @param roleId
	 * @param sex
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getList(Page page,
			@RequestParam(name="name",required=false,defaultValue="") String name
			){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("name", name);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", rubbishCategoryService.findList(queryMap));
		ret.put("total", rubbishCategoryService.getTotal(queryMap));
		return ret;
	}
	
	/**
	 * �����������
	 * @param rubbishCategory
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(RubbishCategory rubbishCategory){
		Map<String, String> ret = new HashMap<String, String>();
		if(rubbishCategory == null){
			ret.put("type", "error");
			ret.put("msg", "����д��ȷ������������Ϣ��");
			return ret;
		}
		if(StringUtils.isEmpty(rubbishCategory.getName())){
			ret.put("type", "error");
			ret.put("msg", "����д������������");
			return ret;
		}
		if(isExist(rubbishCategory.getName(), 0l)){
			ret.put("type", "error");
			ret.put("msg", "�������������Ѿ����ڣ����������룡");
			return ret;
		}
		if(rubbishCategoryService.add(rubbishCategory) <= 0){
			ret.put("type", "error");
			ret.put("msg", "�����������ʧ�ܣ�����ϵ����Ա��");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "��ӳɹ���");
		return ret;
	}
	
	/**
	 * �༭��������
	 * @param rubbishCategory
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(RubbishCategory rubbishCategory){
		Map<String, String> ret = new HashMap<String, String>();
		if(rubbishCategory == null){
			ret.put("type", "error");
			ret.put("msg", "����д��ȷ������������Ϣ��");
			return ret;
		}
		if(StringUtils.isEmpty(rubbishCategory.getName())){
			ret.put("type", "error");
			ret.put("msg", "����д������������");
			return ret;
		}
		if(isExist(rubbishCategory.getName(), rubbishCategory.getId())){
			ret.put("type", "error");
			ret.put("msg", "�������������Ѿ����ڣ����������룡");
			return ret;
		}
		if(rubbishCategoryService.edit(rubbishCategory) <= 0){
			ret.put("type", "error");
			ret.put("msg", "�����������ʧ�ܣ�����ϵ����Ա��");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "�༭�ɹ���");
		return ret;
	}
	
	/**
	 * ����ɾ����������
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> delete(Long id){
		Map<String, String> ret = new HashMap<String, String>();
		if(id == null){
			ret.put("type", "error");
			ret.put("msg", "ѡ��Ҫɾ�������ݣ�");
			return ret;
		}
		try {
			if(rubbishCategoryService.delete(id) <= 0){
				ret.put("type", "error");
				ret.put("msg", "��������ɾ��ʧ�ܣ�����ϵ����Ա��");
				return ret;
			}
		} catch (Exception e) {
			// TODO: handle exception
			ret.put("type", "error");
			ret.put("msg", "�����������´�������������ɾ��������");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "��������ɾ���ɹ���");
		return ret;
	}
	
	/**
	 * �жϸ������������Ƿ����
	 * @param name
	 * @param id
	 * @return
	 */
	private boolean isExist(String name,Long id){
		RubbishCategory rubbishCategory = rubbishCategoryService.findByName(name);
		if(rubbishCategory == null)return false;
		if(rubbishCategory.getId().longValue() == id.longValue())return false;
		return true;
	}
}
