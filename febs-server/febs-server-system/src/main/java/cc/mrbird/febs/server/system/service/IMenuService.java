package cc.mrbird.febs.server.system.service;

import cc.mrbird.febs.common.entity.router.VueRouter;
import cc.mrbird.febs.common.entity.system.Menu;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

public interface IMenuService extends IService<Menu> {

    String findUserPermissions(String username);

    List<Menu> findUserMenus(String username);

    Map<String, Object> findMenus(Menu menu);

    List<VueRouter<Menu>> getUserRouters(String username);

    List<Menu> findMenuList(Menu menu);

    void createMenu(Menu menu);

    void updateMenu(Menu menu) throws Exception;

    /**
     * 递归删除菜单/按钮
     *
     * @param menuIds menuIds
     */
    void deleteMeuns(String[] menuIds) throws Exception;

}
