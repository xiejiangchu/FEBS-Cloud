package cc.mrbird.febs.auth.manager;

import cc.mrbird.febs.auth.mapper.MenuMapper;
import cc.mrbird.febs.auth.mapper.UserMapper;
import cc.mrbird.febs.common.entity.system.Menu;
import cc.mrbird.febs.common.entity.system.SystemUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 用户业务逻辑
 *
 * @author MrBird
 */
@Service
public class UserManager {

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private MenuMapper menuMapper;

    /**
     * 通过用户名查询用户信息
     *
     * @param username 用户名
     * @return 用户
     */
    public SystemUser findByName(String username) {
        return userMapper.findByName(username);
    }

    /**
     * 通过用户名查询用户权限串
     *
     * @param username 用户名
     * @return 权限
     */
    public String findUserPermissions(String username) {
        List<Menu> userPermissions = menuMapper.findUserPermissions(username);
        return userPermissions.stream().map(Menu::getPerms).collect(Collectors.joining(","));
    }
}
