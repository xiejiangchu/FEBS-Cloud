package cc.mrbird.febs.server.system.service.impl;

import cc.mrbird.febs.common.entity.system.UserRole;
import cc.mrbird.febs.server.system.mapper.UserRoleMapper;
import cc.mrbird.febs.server.system.service.IUserRoleService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service("userRoleService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true, rollbackFor = Exception.class)
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements IUserRoleService {

	@Override
	@Transactional
	public void deleteUserRolesByRoleId(String[] roleIds) {
		Arrays.stream(roleIds).forEach(id -> baseMapper.deleteByRoleId(Long.valueOf(id)));
	}

	@Override
	@Transactional
	public void deleteUserRolesByUserId(String[] userIds) {
		Arrays.stream(userIds).forEach(id -> baseMapper.deleteByUserId(Long.valueOf(id)));
	}

	@Override
	public List<String> findUserIdsByRoleId(String[] roleIds) {
		List<UserRole> list = baseMapper.selectList(new LambdaQueryWrapper<UserRole>().in(UserRole::getRoleId, String.join(",", roleIds)));
		return list.stream().map(userRole -> String.valueOf(userRole.getUserId())).collect(Collectors.toList());
	}

}
