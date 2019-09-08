package cc.mrbird.febs.server.test.controller;

import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.entity.system.SystemUser;
import cc.mrbird.febs.server.test.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

/**
 * @author MrBird
 */
@RestController
@RequestMapping
public class TestController {

    @Autowired
    private IUserService userService;

    /**
     * 用于演示 Feign调用受保护的远程方法
     */
    @GetMapping("user/list")
    public FebsResponse getRemoteUserList(QueryRequest request, SystemUser user) {
        return userService.userList(request, user);
    }

    @GetMapping("user")
    public Principal currentUser(Principal principal) {
        return principal;
    }
}
