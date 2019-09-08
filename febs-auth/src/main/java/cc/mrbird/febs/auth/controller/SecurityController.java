package cc.mrbird.febs.auth.controller;

import cc.mrbird.febs.auth.manager.UserManager;
import cc.mrbird.febs.auth.service.ValidateCodeService;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.system.SystemUser;
import cc.mrbird.febs.common.exception.ValidateCodeException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.Principal;

/**
 * @author MrBird
 */
@RestController
public class SecurityController {

    @Autowired
    private ValidateCodeService validateCodeService;
    @Autowired
    private UserManager userManager;

    @GetMapping("user")
    public Principal currentUser(Principal principal) {
        return principal;
    }

    @GetMapping("user/detail")
    public FebsResponse currentUserDetail(Principal principal) {
        SystemUser user = userManager.findByName(principal.getName());
        user.setPassword("secret");
        return new FebsResponse().data(user);
    }

    @GetMapping("captcha")
    public void captcha(HttpServletRequest request, HttpServletResponse response) throws IOException, ValidateCodeException {
        validateCodeService.create(request, response);
    }

}
