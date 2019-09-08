package cc.mrbird.febs.server.system.mapper;


import cc.mrbird.febs.common.entity.system.Column;
import cc.mrbird.febs.common.entity.system.Table;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author MrBird
 */
public interface GeneratorMapper {

    List<String> getDatabases(@Param("databaseType") String databaseType);

    IPage<Table> getTables(Page page, @Param("tableName") String tableName, @Param("databaseType") String databaseType, @Param("schemaName") String schemaName);

    List<Column> getColumns(@Param("databaseType") String databaseType, @Param("schemaName") String schemaName, @Param("tableName") String tableName);
}
