package cc.mrbird.febs.server.system.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.entity.system.Role;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IRoleService extends IService<Role> {

    IPage<Role> findRoles(Role role, QueryRequest request);

    List<Role> findUserRole(String userName);

    List<Role> findAllRoles();

    Role findByName(String roleName);

    void createRole(Role role);

    void deleteRoles(String[] roleIds) throws Exception;

    void updateRole(Role role) throws Exception;
}
