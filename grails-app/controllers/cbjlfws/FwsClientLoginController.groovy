package cbjlfws

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException

class FwsClientLoginController {

    def index() {
    def msga = ""
    def p = params.id

    if (p == '1') {
        msga = "您输入账户有误"
    } else {
        msga = "您的公司账号已过期"
    }
    [msg: msga]
    }
    def login() {
        def username = params.username
        def password = params.password
        def fwsUser = FwsUser.findByUsernameAndPassword(username, password)
        if (fwsUser) {
            session.fwsUser = fwsUser
            def date = new Date()
            if (date <= fwsUser.fwsShop.ybClient.overTime && date >= fwsUser.fwsShop.ybClient.beginTime) {

                redirect(action: "fwsClientIndex")
            } else {
                redirect(action: "index", msg: "您的公司账号已过期", id: 2)
            }
        } else {
            redirect(action: "index", id: 1)
        }
    }
    def side() {
        def user = session.fwsUser
        def gongnenglist = FwsUserRole.findAllByFwsUserRoleId(user.id)
        def size = gongnenglist.size()

        def i = 0
        def list = []
        for (i; i < size; i++) {
            def s = gongnenglist.get(i)
            def gongnengId = s.fwsUserRoleGongNengId
            def g = FwsGongNeng.findById(gongnengId)
            print(s)
            list << g
        }

        return list
    }
    def fwsClientIndex(){
        def fwsUser = session.fwsUser
        def list = side()
        [list:list]
    }


    //金成柱
    //人事管理模块
    //List
    def fwsUserList(Integer max) {

        def list = side()
        params.max = Math.min(max ?: 10, 100)
        def fwsUser = session.fwsUser
        if(!fwsUser){
            redirect (action: index(),params: [msg:  "登陆已过期，请重新登陆"])
            return
        }


        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def name = fwsShop.name
        def fwsUserList = FwsUser.findAllByFwsShop(fwsShop)
        [fwsUserList: fwsUserList, id: fwsUser.fwsShop.id, name: name, fwsUserInstanceTotal: FwsUser.countByFwsShop(fwsShop),list:list]
    }

    //Save
    def fwsUserSave() {
        //创建新对象
        def fwsUserInstance = new FwsUser()
        fwsUserInstance.username=params.username
        fwsUserInstance.name=params.name
        fwsUserInstance.password=params.password
//        fwsUserInstance.position=params.position
        fwsUserInstance.money=params.money
//        fwsUserInstance.status=params.status
        fwsUserInstance.phone=params.phone
//        fwsUserInstance.group=params.group
        fwsUserInstance.time=new Date()

        //获取功能列表
        def gongnenglist = params.gongneng
        //获取部门id
        def departmentId = params.department
        //获取服务商Id
        def fwsShopId = session.fwsUser.fwsShopId
        //新建对象的服务商绑定
        fwsUserInstance.fwsShop = FwsShop.get(fwsShopId)
        //新建对象的部门绑定
        fwsUserInstance.department = Department.get(departmentId)
        def i = 0
        if (!fwsUserInstance.save(flush: true)) {
            render(view: "fwsUserList", model: [fwsUserInstance: fwsUserInstance])
            return
        }
//        for (i; i < gongnenglist.size(); i++) {
//            def userId = fwsUserInstance.id
//            def gongnengId = gongnenglist[i]
//            def fwsRole = new FwsUserRole()
//            fwsRole.fwsUserRoleTime = new Date()
//            fwsRole.fwsUserRoleGongNengId = gongnengId
//            fwsRole.fwsUserRoleId = userId
//            fwsRole.save()
//        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ybUser.label', default: 'YbUser'), fwsUserInstance.id])
        redirect(action: "fwsUserList")
    }

    //Show
    def fwsUserShow(Long id) {
        def fwsUserInstance = FwsUser.get(id)
        def fwsShopId = fwsUserInstance.fwsShopId
        def fwsShop = FwsShop.get(fwsShopId)
        def name = fwsShop.name
        def gongnenglist = FwsUserRole.findAllByFwsUserRoleId(fwsUserInstance.id)
        if (!fwsUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsUser.label', default: 'FwsUser'), id])
            redirect(action: "fwsUserList")
            return
        }
        def size = gongnenglist.size()

        def i = 0
        def listgongneng = []
        for (i; i < size; i++) {
            def s = gongnenglist.get(i)
            def gongnengId = s.fwsUserRoleGongNengId
            def g = FwsGongNeng.findById(gongnengId)
            print(s)
            listgongneng << g
        }

        [fwsUserInstance: fwsUserInstance, id: fwsUserInstance.fwsShop.id, name: name, listgongneng: listgongneng]
    }

    //Edit
    def fwsUserEdit() {
//        def fwsUserInstance = FwsUser.get(id)
//        def fwsShopId = fwsUserInstance.fwsShopId
//        def departmentList = FwsShop.get(fwsShopId).department
//        def gongnenglist = FwsUserRole.findAllByFwsUserRoleId(id)
//        def size = gongnenglist.size()
//
//        def i = 0
//        def listgongneng = []
//        for (i; i < size; i++) {
//            def s = gongnenglist.get(i)
//            def gongnengId = s.fwsUserRoleGongNengId
//            def g = FwsGongNeng.findById(gongnengId)
//            print(s)
//            listgongneng << g
//        }
//        def gongnenglistrole = FwsGongNeng.list()
//
//        if (!fwsUserInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsUser.label', default: 'FwsUser'), id])
//            redirect(action: "fwsUserList")
//            return
//        }
//
//        [fwsUserInstance: fwsUserInstance, name: fwsUserInstance.fwsShop.name, id: fwsShopId, departmentList: departmentList, gongnenglistrole: gongnenglistrole, listgongneng: listgongneng]
        def rs =[:]
        def id=params.id
        def fwsUserInstance=FwsUser.get(id)
        if(!fwsUserInstance){
            rs.result=false
            rs.msg='查询失败！'
        }else{
            def fwsuserrolelist = FwsUserRole.findAllByFwsUserRoleId(id)
            def size = fwsuserrolelist.size()

            def i = 0
            def listgongneng = []
            for (i; i < size; i++) {
                def s = fwsuserrolelist.get(i)
                def gongnengId = s.fwsUserRoleGongNengId
                def g = FwsGongNeng.findById(gongnengId)
                print(s)
                listgongneng << g
            }
            rs.result=true
            rs.fwsUserInstance=fwsUserInstance
            rs.listgongneng=listgongneng
        }
        if (params.callback) {
            render "${params.callback}(${rs as JSON})"
        } else
            render rs as JSON
    }

    //Update
    def fwsUserUpdate(Long id, Long version) {
        def fwsUserInstance = FwsUser.get(id)
        fwsUserInstance.department = Department.get(params.departmentId)
        if (!fwsUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsUser.label', default: 'FwsUser'), id])
            redirect(action: "fwsUserList")
            return
        }

        if (version != null) {
            if (fwsUserInstance.version > version) {
                fwsUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'fwsUser.label', default: 'FwsUser')] as Object[],
                        "Another user has updated this FwsUser while you were editing")
                render(view: "fwsUserEdit", model: [fwsUserInstance: fwsUserInstance])
                return
            }
        }

        fwsUserInstance.properties = params

        if (!fwsUserInstance.save(flush: true)) {
            render(view: "fwsUserEdit", model: [fwsUserInstance: fwsUserInstance])
            return
        }


        def gongnenglist = params.gongneng
        def role = FwsUserRole.findAllByFwsUserRoleId(id)
        def x = 0
        for (x; x < role.size(); x++) {
            def roleId = role.get(x).id
            def roleuser = FwsUserRole.get(roleId)
            roleuser.delete()
        }
        def i = 0
        for (i; i < gongnenglist.size(); i++) {
            def userId = fwsUserInstance.id
            def gongnengId = gongnenglist[i]
            def fwsRole = new FwsUserRole()
            fwsRole.fwsUserRoleTime = new Date()
            fwsRole.fwsUserRoleGongNengId = gongnengId
            fwsRole.fwsUserRoleId = userId
            fwsRole.save()
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'ybUser.label', default: 'YbUser'), fwsUserInstance.id])
        redirect(action: "fwsUserShow", id: fwsUserInstance.id)
    }

    //Delete
    def fwsUserDelete(Long id) {
        def fwsUserInstance = FwsUser.get(id)
        def fwsShopId = fwsUserInstance.fwsShop.id
        if (!fwsUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsUser.label', default: 'FwsUser'), id])
            redirect(action: "fwsUserList", id: fwsShopId)
            return
        }

        try {
            fwsUserInstance.delete()
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'fwsUser.label', default: 'FwsUser'), id])
            redirect(action: "fwsUserList", id: fwsShopId)
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'fwsUser.label', default: 'FwsUser'), id])
            redirect(action: "fwsUserShow", id: id)
        }
    }


//王钧民
    def fwsClientDepartmentList(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def name = fwsShop.name
        def fwsClientDepartmentList = Department.findAllByFwsShop(fwsShop)
        def list=side();
        [fwsClientDepartmentList: fwsClientDepartmentList, id: fwsUser.fwsShop.id,name: name, fwsClientDepartmentInstanceTotal: Department.countByFwsShop(fwsShop),list:list]
    }
    //添加
    def fwsClientDepartmentCreate() {
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def name = fwsShop.name
        [fwsClientDepartmentInstance: new Department(params), id: fwsUser.fwsShop.id, name: name]

    }
    //保存
    def fwsClientDepartmentSave() {
        def fwsClientDepartmentInstance = new Department(params)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        fwsClientDepartmentInstance.fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        if (!fwsClientDepartmentInstance.save(flush: true)) {
            render(view: "fwsClientDepartmentCreate", model: [departmentInstance: fwsClientDepartmentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'department.label', default: 'Department'), fwsClientDepartmentInstance.id])
        redirect(action: "fwsClientDepartmentList", id: fwsUser.fwsShop.id)
    }
    //查看
    def fwsClientDepartmentShow(Long id) {
        def fwsClientDepartmentInstance = Department.get(id)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def fwsShopId = fwsClientDepartmentInstance.fwsShopId
        def name = fwsShop.name
        if (!fwsClientDepartmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'department.label', default: 'Department'), id])
            redirect(action: "fwsClientDepartmentList")
            return
        }

        [fwsClientDepartmentInstance: fwsClientDepartmentInstance, name: name, id: fwsUser.fwsShop.id]
    }
    //删除
    def fwsClientDepartmentDelete(Long id) {
        def fwsClientDepartmentInstance = Department.get(id)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def fwsShopId = fwsClientDepartmentInstance.fwsShopId
        if (!fwsClientDepartmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'department.label', default: 'Department'), id])
            redirect(action: "fwsClientDepartmentList", id: fwsUser.fwsShop.id)
            return
        }

        try {
            fwsClientDepartmentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'department.label', default: 'Department'), id])
            redirect(action: "fwsClientDepartmentList", id: fwsUser.fwsShop.id)
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'department.label', default: 'Department'), id])
            redirect(action: "fwsClientDepartmentShow", id: fwsUser.fwsShop.id)
        }
    }
    //编辑
    def fwsClientDepartmentEdit(Long id) {
        def fwsClientDepartmentInstance = Department.get(id)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def fwsShopId = fwsClientDepartmentInstance.fwsShopId
        def fwsClientDepartmentList = FwsShop.get(fwsUser.fwsShop.id).department
        def name = fwsShop.name
        if (!fwsClientDepartmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'department.label', default: 'Department'), id])
            redirect(action: "fwsClientDepartmentList")
            return
        }

        [fwsClientDepartmentInstance: fwsClientDepartmentInstance, name: name, id: fwsUser.fwsShop.id, departmentList: fwsClientDepartmentList]
    }

    //更新
    def  fwsClientDepartmentUpdate(Long id, Long version) {
        def fwsClientDepartmentInstance = Department.get(id)
        if (!fwsClientDepartmentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'department.label', default: 'Department'), id])
            redirect(action: "fwsClientDepartmentList")
            return
        }

        if (version != null) {
            if (fwsClientDepartmentInstance.version > version) {
                fwsClientDepartmentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'department.label', default: 'Department')] as Object[],
                        "Another user has updated this Department while you were editing")
                render(view: "fwsClientDepartmentEdit", model: [fwsClientDepartmentInstance: fwsClientDepartmentInstance])
                return
            }
        }

        fwsClientDepartmentInstance.properties = params

        if (!fwsClientDepartmentInstance.save(flush: true)) {
            render(view: "fwsClientDepartmentEdit", model: [fwsClientDepartmentInstance: fwsClientDepartmentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'department.label', default: 'Department'), fwsClientDepartmentInstance.id])
        redirect(action: "fwsClientDepartmentShow", id: fwsClientDepartmentInstance.id)

    }
    def fwsClientlist(Integer max){
        def list = side()
        params.max = Math.min(max ?: 10, 100)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def name = fwsShop.name
        def fwsClientList = FwsClient.findAllByFwsShop(fwsShop)
        [fwsClientList: fwsClientList, id: fwsUser.fwsShop.id, name: name, fwsUserInstanceTotal: FwsUser.countByFwsShop(fwsShop),list:list]
    }
    def yyjd(){
        def list=side()
        [list:list]
    }
    def wxjd(){
        def list=side()
        [list:list]
    }
    def wxlj(){
        def list=side()
        [list:list]}
    def cjgl(){
        def list=side()
        [list:list]}
    def kfgl(){
        def list=side()
        [list:list]}
    def cwgl(){
        def list=side()
        [list:list]}
    def clgl(){
        def list=side()
        [list:list]}
}
