package  ${basePackage};

import java.util.Date;

/**
* ${table.tableComment}
*
* @author ${table.author}
* @date  ${table.createTime}
*/
public class ${table.tableNameUpperCamel} {
<#list colums as colum>
        private ${colum.javaType} ${colum.columNameLowerCamel};
</#list>
<#list colums as colum>
        public ${colum.javaType} get${colum.columNameUpperCamel}() {
                return ${colum.columNameLowerCamel};
        }

        public void set${colum.columNameUpperCamel}(${colum.javaType} ${colum.columNameLowerCamel}) {
                this.${colum.columNameLowerCamel} = ${colum.columNameLowerCamel};
        }
</#list>
}