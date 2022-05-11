package com.epam.rd.izh.controller;


import com.epam.rd.izh.entity.User;
import com.epam.rd.izh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class RegLogController {

     @Autowired
     UserService userService;

    @GetMapping("/registration")
    public String registration(Model model) {
        model.addAttribute("form_signup", new User());

        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@ModelAttribute("form_signup") @Valid User userForm, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        if (!userForm.getPassword().equals(userForm.getConfirmPass())){
            model.addAttribute("passwordError", "Пароли не совпадают");
            return "registration";
        }
        if (!userService.saveUser(userForm)){
            model.addAttribute("usernameError", "Пользователь с таким именем уже существует");
            return "registration";
        }

        return "redirect:/";
    }
}
