package cc.mrbird.febs.server.test.service;

import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.FebsServerConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.entity.system.SystemUser;
import cc.mrbird.febs.server.test.service.fallback.UserServiceFallback;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Feign客户端
 *
 * @author MrBird
 */
@FeignClient(value = FebsServerConstant.FEBS_SERVER_SYSTEM, contextId = "userServiceClient", fallbackFactory = UserServiceFallback.class)
public interface IUserService {

    @GetMapping("user")
    FebsResponse userList(@RequestParam QueryRequest queryRequest, @RequestParam SystemUser user);
}
