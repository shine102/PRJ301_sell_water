package com.example.demo.sellwater.exception;

import org.springframework.http.HttpStatus;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;



@ControllerAdvice
@ResponseStatus
public class ExceptionHandlerController extends ResponseEntityExceptionHandler {
    
    @ExceptionHandler(CategoryNotFound.class)
    public ModelAndView categoryNotFoundExceptionHandler(CategoryNotFound ex){
        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", ex.getMessage());
        mav.addObject("status", HttpStatus.NOT_FOUND);
        mav.setViewName("exception");
        return mav;
    }

    @ExceptionHandler(DrinkNotFound.class)
    public ModelAndView drinkNotFoundExceptionHandler(DrinkNotFound ex){
        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", ex.getMessage());
        mav.addObject("status", HttpStatus.NOT_FOUND);
        mav.setViewName("exception");
        return mav;
    }

    @ExceptionHandler(BlogNotFound.class)
    public ModelAndView blogNotFoundExceptionHandler(BlogNotFound ex){
        ModelAndView mav = new ModelAndView();
        mav.addObject("exception", ex.getMessage());
        mav.addObject("status", HttpStatus.NOT_FOUND);
        mav.setViewName("exception");
        return mav;
    }
}
