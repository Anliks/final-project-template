package com.epam.rd.izh.controller;


import com.epam.rd.izh.service.ProductService;
import com.epam.rd.izh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class AdminController {

    @Autowired
    UserService userService;
    @Autowired
    ProductService productService;

    @GetMapping("/admin")
    public String viewList(Model model) {
        model.addAttribute("allUsers", userService.allUsers());
        model.addAttribute("allProducts", productService.allProducts());
        return "admin";
    }

    @PostMapping("/admin")
    public String deleteUserAndPos(@RequestParam(required = true, defaultValue = "") Long userId,
                             @RequestParam(required = true, defaultValue = "") String action,
                             @RequestParam(required = true, defaultValue = "") Long positionId,
                             Model model) {
        if (action.equals("delete")) {
            userService.deleteUser(userId);
            return "redirect:/admin";
        }

        if(action.equals("deletePos")) {
            productService.deleteProduct(positionId);
            return "redirect:/admin";
        }
        return "redirect:/admin";
    }

    @GetMapping("/admin/gt/{userId}")
    public String gtUser(@PathVariable("userId") Long userId, Model model) {
        model.addAttribute("allUsers", userService.usergtList(userId));
        return "admin";
    }


}
