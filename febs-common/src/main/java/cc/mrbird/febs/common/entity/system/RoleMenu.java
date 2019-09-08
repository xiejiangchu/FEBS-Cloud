package cc.mrbird.febs.common.entity.system;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

/**
 * @author MrBird
 */
@TableName("t_role_menu")
@Data
public class RoleMenu implements Serializable {
	
	private static final long serialVersionUID = -7573904024872252113L;

	@TableField(value = "ROLE_ID")
    private Long roleId;
    @TableField(value = "MENU_ID")
    private Long menuId;
}