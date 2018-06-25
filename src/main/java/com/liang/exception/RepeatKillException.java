package com.liang.exception;

/*
 *  Created by IntelliJ IDEA.
 *  User: wangliang
 *  Date: 2018/6/21
 *  Time: 14:00
 *  Description:重复秒杀异常，是一个运行期异常，不需要我们手动try catch
 * Mysql只支持运行期异常的回滚操作
 */
public class RepeatKillException extends  SeckillException {

    public RepeatKillException(String message) {
        super(message);
    }

    public RepeatKillException(String message, Throwable cause) {
        super(message, cause);
    }
}
