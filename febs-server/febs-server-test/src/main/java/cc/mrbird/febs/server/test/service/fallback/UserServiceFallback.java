package cc.mrbird.febs.server.test.service.fallback;

import cc.mrbird.febs.common.annotation.Fallback;
import cc.mrbird.febs.server.test.service.IUserService;
import feign.hystrix.FallbackFactory;
import lombok.extern.slf4j.Slf4j;

/**
 * Feign回退
 *
 * @author MrBird
 */
@Slf4j
@Fallback
public class UserServiceFallback implements FallbackFactory<IUserService> {

    @Override
    public IUserService create(Throwable throwable) {
        return (p, u) -> {
            log.error("获取用户信息失败", throwable);
            return null;
        };
    }
}