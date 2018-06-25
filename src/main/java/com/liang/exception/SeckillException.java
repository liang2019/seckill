package com.liang.exception;
/*
 *  Created by IntelliJ IDEA.
 *  User: wangliang
 *  Date: 2018/6/21
 *  Time: 14:00
 *  Description:秒杀相关的所有业务异常
 *
 */
public class SeckillException extends  RuntimeException {
    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
