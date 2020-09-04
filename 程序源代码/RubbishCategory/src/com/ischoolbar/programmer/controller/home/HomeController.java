package com.ischoolbar.programmer.controller.home;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Authority;
import com.ischoolbar.programmer.entity.admin.Menu;
import com.ischoolbar.programmer.entity.admin.Role;
import com.ischoolbar.programmer.entity.admin.Rubbish;
import com.ischoolbar.programmer.entity.admin.RubbishCategory;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.AuthorityService;
import com.ischoolbar.programmer.service.admin.LogService;
import com.ischoolbar.programmer.service.admin.MenuService;
import com.ischoolbar.programmer.service.admin.RoleService;
import com.ischoolbar.programmer.service.admin.RubbishCategoryService;
import com.ischoolbar.programmer.service.admin.RubbishService;
import com.ischoolbar.programmer.service.admin.UserService;
import com.ischoolbar.programmer.util.CpachaUtil;
import com.ischoolbar.programmer.util.MenuUtil;

/**
 * 系统操作类控制器
 * @author llq
 *
 */
@Controller
@RequestMapping("/home")
public class HomeController {
	
	@Autowired
	private RubbishCategoryService rubbishCategoryService;
	
	@Autowired
	private RubbishService rubbishService;
	
	/**
	 * 系统登录后的主页
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView index(ModelAndView model){
		model.setViewName("home/index");
		return model;//WEB-INF/views/+system/index+.jsp = WEB-INF/views/system/index.jsp
	}
	
	/**
	 * 系统登录后的欢迎页
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public ModelAndView search(@RequestParam(name="k",required=false,defaultValue="") String name,ModelAndView model){
		RubbishCategory rubbishCategory = null;
		if(!StringUtils.isEmpty(name)){
			//先查询垃圾表
			List<Rubbish> rubbishList = rubbishService.findByName(name);
			if(rubbishList != null && rubbishList.size() > 0){
				rubbishCategory = rubbishList.get(0).getRubbishCategory();
			}else{
				//若垃圾表未查询到，再查询分类表
				List<RubbishCategory> rubbishCategoryList = rubbishCategoryService.findByCommon(name);
				if(rubbishCategoryList != null && rubbishCategoryList.size() > 0)
					rubbishCategory = rubbishCategoryList.get(0);
			}
		}
		model.addObject("k", name);
		model.addObject("rubbishCategory", rubbishCategory);
		model.setViewName("home/search");
		return model;
	}
	
}
