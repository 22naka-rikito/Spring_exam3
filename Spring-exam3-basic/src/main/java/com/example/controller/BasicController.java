package com.example.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.controller.form.TopForm;
import com.example.entity.Product;
import com.example.service.ProductService;

@Controller
public class BasicController {
	
	@Autowired
    ProductService productService;

    @RequestMapping("/top")
    public String top(@ModelAttribute("top") TopForm form, Model model) {
        return "top";
    }
    
    @RequestMapping(value="/result", params="search")
    public String searchResult(@ModelAttribute("top") TopForm form, Model model) {
    	System.out.println("cotroll");
    	ConfigurableApplicationContext context =
                SpringApplication.run(SpringJdbcApplication.class, args);
    	ProductService userService = context.getBean(ProductService.class);
        Product product = userService.findById();
//    	Product product = productService.findById(form.getProductId());
//    	model.addAttribute("product", product);
        return "searchResult";
    }
    @RequestMapping(value="/result", params="insert")
    public String insertResult(@ModelAttribute("") TopForm form, Model model) {
    	return "insertResult";
    }
    

}
