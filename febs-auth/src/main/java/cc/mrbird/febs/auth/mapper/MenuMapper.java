package cc.mrbird.febs.auth.mapper;

import cc.mrbird.febs.common.entity.system.Menu;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * @author MrBird
 */
public interface MenuMapper extends BaseMapper<Menu> {

    List<Menu> findUserPermissions(String username);
}