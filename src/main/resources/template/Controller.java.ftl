package ${basePackage};


import com.study.practice.base.model.BaseResponse;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;
/**
*
* ${table.tableComment}
* @author ${table.author}
* @date  ${table.createTime}
*/
@RestController
@RequestMapping("/${table.tableNameLower}")
public class ${table.tableNameUpperCamel}Controller {

    @Resource
    private ${table.tableNameUpperCamel}Service service;

    @PostMapping(value = "/pages")
    public BaseResponse pages(@RequestBody ${table.tableNameUpperCamel} ${table.tableNameLowerCamel}) {
        PageHelper.startPage(${table.tableNameLowerCamel} .getStart(), ${table.tableNameLowerCamel} .getLength());
        List<${table.tableNameUpperCamel}> list = service.pages(${table.tableNameLowerCamel});
        return new BaseResponse(true, "获取成功", list, ((Page) list).getTotal());
    }


    @PostMapping(value = "/getAll")
    public BaseResponse getAll() {
        List<${table.tableNameUpperCamel}> list = this.service.getAll();
        return new BaseResponse(true, "获取成功", list);
    }


    @PostMapping("/add")
    public BaseResponse add(@RequestBody ${table.tableNameUpperCamel} ${table.tableNameLowerCamel}) {
        ${table.tableNameUpperCamel} new${table.tableNameUpperCamel} = service.add(${table.tableNameLowerCamel});
        return new BaseResponse(true, "添加成功", new${table.tableNameUpperCamel});
    }



    @PostMapping("/detail")
    public BaseResponse detail(@RequestBody ${table.tableNameUpperCamel} ${table.tableNameLowerCamel}) {
        ${table.tableNameUpperCamel} new${table.tableNameUpperCamel} = service.getById(${table.tableNameLowerCamel}.get${table.tableNameUpperCamel}Id());
        if (new${table.tableNameUpperCamel} != null) {
            return new BaseResponse(true, "查询成功", new${table.tableNameUpperCamel});
        } else {
            return new BaseResponse(false, "没有找到");
        }
    }


    @PostMapping("/update")
    public BaseResponse update(@RequestBody ${table.tableNameUpperCamel} ${table.tableNameLowerCamel}) {
        ${table.tableNameUpperCamel} new${table.tableNameUpperCamel} = service.update(${table.tableNameLowerCamel});
        return new BaseResponse(true, "修改成功", new${table.tableNameUpperCamel});
    }


    @PostMapping("/delete")
    public BaseResponse delete(@RequestBody ${table.tableNameUpperCamel} ${table.tableNameLowerCamel}) {
        service.deleteById(${table.tableNameLowerCamel}.get${table.tableNameUpperCamel}Id());
        return new BaseResponse(true, "删除成功");
    }

}