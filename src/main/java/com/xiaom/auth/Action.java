package com.xiaom.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by xiaojie.Ma on 2018/11/16.
 */
@Controller
public class Action {

    @GetMapping("/")
    public String ok() {
        return "index";
    }

}
