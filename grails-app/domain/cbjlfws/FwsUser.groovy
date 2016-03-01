package cbjlfws

class FwsUser {
    //张晶
    //用户名
    String username
    //密码
    String password
    //真实姓名
    String name
    //电话
    String phone
    //职位
    String position
//    //部门
//    String  department
        //收入
    String money
    //录入时间
    Date time
    //班组
    String groups
    //状态
    String status
    static hasOne = [fwsShop:FwsShop,department:Department]
    static constraints = {
        username(nullable: true)
        password(nullable: true)
        phone(nullable: true)
        position(nullable: true)
        money(nullable: true)
        groups(nullable: true)
        status(nullable: true)
        time(nullable: true)
        name(nullable: true)

    }
}
