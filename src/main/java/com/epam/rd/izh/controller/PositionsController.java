package com.epam.rd.izh.controller;

import com.epam.rd.izh.entity.Positions;
import com.epam.rd.izh.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class PositionsController {
    @Autowired
    ProductService productService;

    @GetMapping("/addform")
    public String viewRegistration(Model model) {
        model.addAttribute("allProducts", productService.allProducts());
        return "addform";
    }
    @PostMapping("/addform")
    public String  addProduct(@ModelAttribute("form_signup") Positions posForm, Model model) {
      model.addAttribute("form_signup", productService.saveProduct(posForm));
        return "addform";
    }
    @GetMapping("/positions")
    public String  viewProduct(Model model) {
        model.addAttribute("allProducts", productService.allProducts());
        return "positions";
    }
    @GetMapping ("/search")
    public String  searchProducts(@RequestParam("name") String name, Model model) {
        try {
            model.addAttribute("positions", productService.loadProductByName(name));
            return "search";
        }catch (IllegalArgumentException e) {
            model.addAttribute("message", e.getMessage());
            return "index";
        }
    }



}
