package com.xiaom.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by xiaojie.Ma on 2018/11/16.
 */
@Controller
public class Action {

    //http://lbsyun.baidu.com/index.php?title=yingyan/api/v3/trackupload

    //纬度+经度
    //http://api.map.baidu.com/geocoder/v2/?ak=0Rca0mKwmm0QSqLsEmIm0By4cB6GRsvG&callback=renderReverse&location=23.090788,113.271319&output=json&pois=1


    @GetMapping("/")
    public String ok() {
        return "index";
    }

}
