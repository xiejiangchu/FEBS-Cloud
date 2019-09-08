package cc.mrbird.febs.server.system.service;

import cc.mrbird.febs.common.entity.system.RoleMenu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IRoleMenuService extends IService<RoleMenu> {

    void deleteRoleMenusByRoleId(String[] roleIds);

    void deleteRoleMenusByMenuId(String[] menuIds);

    List<RoleMenu> getRoleMenusByRoleId(String roleId);
}
