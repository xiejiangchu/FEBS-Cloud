package cc.mrbird.febs.server.system.aspect;

import cc.mrbird.febs.common.entity.system.Log;
import cc.mrbird.febs.common.utils.HttpContextUtil;
import cc.mrbird.febs.common.utils.IPUtil;
import cc.mrbird.febs.server.system.service.ILogService;
import cc.mrbird.febs.server.system.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * AOP 记录用户操作日志
 *
 * @author MrBird
 */
@Slf4j
@Aspect
@Component
public class LogAspect {

    @Autowired
    private ILogService logService;
    @Autowired
    private IUserService userService;

    @Pointcut("@annotation(cc.mrbird.febs.common.annotation.Log)")
    public void pointcut() {
        // do nothing
    }

    @Around("pointcut()")
    public Object around(ProceedingJoinPoint point) throws Throwable {
        Object result;
        long beginTime = System.currentTimeMillis();
        // 执行方法
        result = point.proceed();
        HttpServletRequest request = HttpContextUtil.getHttpServletRequest();
        // 设置 IP地址
        String ip = IPUtil.getIpAddr(request);
        // 执行时长(毫秒)
        long time = System.currentTimeMillis() - beginTime;
        // 保存日志
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String username = (String) authentication.getPrincipal();
        Log log = new Log();
        log.setUsername(username);
        log.setIp(ip);
        log.setTime(time);
        logService.saveLog(point, log);
        return result;
    }
}
