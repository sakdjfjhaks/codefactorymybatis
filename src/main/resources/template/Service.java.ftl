package ${basePackage};
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
/**
* ${table.tableComment}(${table.tableNameUpperCamel})表服务实现类
*
* @author ${table.author}
* @date  ${table.createTime}
*/
@Service
public class ${table.tableNameUpperCamel}ServiceImpl implements ${table.tableNameUpperCamel}Service{

    @Resource
    private ${table.tableNameUpperCamel}Dao dao;

    /**
    * 查询多条数据
    *
    * @param ${table.tableNameLowerCamel} 查询参数
    * @return 对象列表
    */
public List<${table.tableNameUpperCamel}> pages(${table.tableNameUpperCamel} ${table.tableNameLowerCamel}){
        return this.dao.pages(${table.tableNameLowerCamel});
    }

    /**
    * 查询所有数据
    *
    * @return 对象列表
    */
public List<${table.tableNameUpperCamel}> getAll(){
        return this.dao.getAll();
    }

    /**
    * 新增数据
    *
    * @param ${table.tableNameLowerCamel} 实例对象
    * @return 实例对象
    */
public ${table.tableNameUpperCamel} add(${table.tableNameUpperCamel} ${table.tableNameLowerCamel}){
        this.dao.add(${table.tableNameLowerCamel});
        return  this.getById(${table.tableNameLowerCamel}.get${table.tableNameUpperCamel}Id());
    }


    /**
    * 通过ID查询单条数据
    *
    * @param ${table.tableNameLowerCamel}Id 主键
    * @return 实例对象
    */
public ${table.tableNameUpperCamel} getById(Integer ${table.tableNameLowerCamel}Id){
        return this.dao.getById(${table.tableNameLowerCamel}Id);
    }


    /**
    * 修改数据
    *
    * @param ${table.tableNameLowerCamel} 实例对象
    * @return 实例对象
    */
public ${table.tableNameUpperCamel} update(${table.tableNameUpperCamel} ${table.tableNameLowerCamel}){
        this.dao.update(${table.tableNameLowerCamel});
        return this.getById(${table.tableNameLowerCamel}.get${table.tableNameUpperCamel}Id());
    }

    /**
    * 通过主键删除数据
    *
    * @param ${table.tableNameLowerCamel}Id 主键
    * @return 是否成功
    */
public boolean deleteById(Integer ${table.tableNameLowerCamel}Id){
        return this.dao.deleteById(${table.tableNameLowerCamel}Id)>0;
    }

}