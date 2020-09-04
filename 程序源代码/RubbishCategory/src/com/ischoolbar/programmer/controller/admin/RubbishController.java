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

import com.ischoolbar.programmer.entity.admin.Rubbish;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.RubbishCategoryService;
import com.ischoolbar.programmer.service.admin.RubbishService;

/**
 * �������������
 * @author llq
 *
 */
@RequestMapping("/admin/rubbish")
@Controller
public class RubbishController {
	@Autowired
	private RubbishCategoryService rubbishCategoryService;
	@Autowired
	private RubbishService rubbishService;
	
	/**
	 * �����б�ҳ��
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.addObject("rubbishCategoryList", rubbishCategoryService.findList(null));
		model.setViewName("rubbish/list");
		return model;
	}
	
	/**
	 * ��ȡ�����б�
	 * @param page
	 * @param name
	 * @param roleId
	 * @param sex
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getList(Page page,
			@RequestParam(name="name",required=false,defaultValue="") String name,
			Long categoryId
			){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		if(categoryId != null){
			queryMap.put("categoryId", categoryId);
		}
		queryMap.put("name", name);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", rubbishService.findList(queryMap));
		ret.put("total", rubbishService.getTotal(queryMap));
		return ret;
	}
	
	/**
	 * �������
	 * @param rubbish
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Rubbish rubbish){
		Map<String, String> ret = new HashMap<String, String>();
		if(rubbish == null){
			ret.put("type", "error");
			ret.put("msg", "����д��ȷ��������Ϣ��");
			return ret;
		}
		if(StringUtils.isEmpty(rubbish.getName())){
			ret.put("type", "error");
			ret.put("msg", "����д��������");
			return ret;
		}
		if(rubbishService.add(rubbish) <= 0){
			ret.put("type", "error");
			ret.put("msg", "�������ʧ�ܣ�����ϵ����Ա��");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "��ӳɹ���");
		return ret;
	}
	
	/**
	 * �༭����
	 * @param rubbish
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Rubbish rubbish){
		Map<String, String> ret = new HashMap<String, String>();
		if(rubbish == null){
			ret.put("type", "error");
			ret.put("msg", "����д��ȷ��������Ϣ��");
			return ret;
		}
		if(StringUtils.isEmpty(rubbish.getName())){
			ret.put("type", "error");
			ret.put("msg", "����д��������");
			return ret;
		}
		
		if(rubbishService.edit(rubbish) <= 0){
			ret.put("type", "error");
			ret.put("msg", "�������ʧ�ܣ�����ϵ����Ա��");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "�༭�ɹ���");
		return ret;
	}
	
	/**
	 * ����ɾ������
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
			if(rubbishService.delete(id) <= 0){
				ret.put("type", "error");
				ret.put("msg", "����ɾ��ʧ�ܣ�����ϵ����Ա��");
				return ret;
			}
		} catch (Exception e) {
			// TODO: handle exception
			ret.put("type", "error");
			ret.put("msg", "�������´�������������ɾ��������");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "����ɾ���ɹ���");
		return ret;
	}
	
}
