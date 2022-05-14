package com.epam.rd.izh.controller;

import com.epam.rd.izh.entity.User;
import com.epam.rd.izh.service.CartService;
import com.epam.rd.izh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CartController {

    @Autowired
    UserService userService;

    @Autowired
    CartService cartService;

    @GetMapping("/cart")
    public String cartProduct(@AuthenticationPrincipal User user, Model model) {
        model.addAttribute("allProductsOfUser", cartService.getUserListProducts(user));
        return "cart";
    }
    @PostMapping("/addproduct")
    public String addProduct(@AuthenticationPrincipal User user,
                             @RequestParam(required = true, defaultValue = "") Long positionId,
                             Model model) {
        if (!cartService.addProductToCart(user, positionId)) {
            model.addAttribute("addError", "Продукт не добавлен в корзину");
            return "redirect:/positions";
        }
        return "redirect:/positions";
    }
    @PostMapping("/deleteproduct")
    public String deleteProduct(@AuthenticationPrincipal User user,
                                @RequestParam(required = true, defaultValue = "") Long positionId,
                                Model model) {
        if (!cartService.deleteProductFromCart(user, positionId)) {
            model.addAttribute("deleteError", "Ошибка при удалении продукта");
            return "redirect:/cart";
        }
        return "redirect:/cart";
    }

}
