package cc.mrbird.febs.server.system.service;


import cc.mrbird.febs.common.entity.system.UserRole;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

public interface IUserRoleService extends IService<UserRole> {

	void deleteUserRolesByRoleId(String[] roleIds);

	void deleteUserRolesByUserId(String[] userIds);

	List<String> findUserIdsByRoleId(String[] roleIds);
}
