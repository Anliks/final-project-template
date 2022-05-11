package com.epam.rd.izh.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
  /**
   * Данный класс можно использовать для создание бинов приложения, например бин ObjectMapper для десериализации.
   * Этот класс не является обязательным, но является стандартным там, где используется настройка бинов.
   */
  @Override
  public void addViewControllers(ViewControllerRegistry registry) {
      registry.addViewController("/login").setViewName("login");
      registry.addViewController("/addform").setViewName("addform");
      registry.addViewController("/about").setViewName("about");



  }
}
