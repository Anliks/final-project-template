package com.epam.rd.izh.controller;

import com.epam.rd.izh.entity.Positions;
import com.epam.rd.izh.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PositionsController {
    @Autowired
    ProductService productService;

    @GetMapping("/addform")
    public String viewRegistration1(Model model) {
        model.addAttribute("allProducts", productService.allProducts());
        return "addform";
    }
    @PostMapping("/addform")
    public String  addProduct(@ModelAttribute("form_signup") Positions posForm, Model model) {
      model.addAttribute("form_signup", productService.saveProduct(posForm));
        return "addform";
    }
    @GetMapping("/positions")
    public String  addProduct(Model model) {
        model.addAttribute("allProducts", productService.allProducts());
        return "positions";
    }

}
