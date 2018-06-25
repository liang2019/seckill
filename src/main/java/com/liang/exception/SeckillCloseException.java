package com.liang.exception;

/*
 *  Created by IntelliJ IDEA.
 *  User: wangliang
 *  Date: 2018/6/21
 *  Time: 14:00
 *  Description:秒杀关闭异常，当秒杀结束时用户还要进行秒杀就会出现这个异常
 */
public class SeckillCloseException extends SeckillException {
    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
