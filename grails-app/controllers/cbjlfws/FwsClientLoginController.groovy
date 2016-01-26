package cbjlfws

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
//        //获取服务商ID
//        def fwsShopId = params.id
//        //获取服务商对象
//        def fwsShop = FwsShop.get(fwsShopId)
//        //获取服务商属性名字
//        def name = fwsShop.name
//        //通过服务商对象获取服务商list
//        def fwsUserList = FwsUser.findAllByFwsShop(fwsShop)
//        [fwsUserList: fwsUserList, id: fwsShopId, name: name, fwsUserInstanceTotal: FwsUser.countByFwsShop(fwsShop)]
        params.max = Math.min(max ?: 10, 100)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def name = fwsShop.name
        def fwsUserList = FwsUser.findAllByFwsShop(fwsShop)
        [fwsUserList: fwsUserList, id: fwsUser.fwsShop.id, name: name, fwsUserInstanceTotal: FwsUser.countByFwsShop(fwsShop)]
    }

    //Create
    def fwsUserCreate(){
//        def fwsShopId = params.id
//        def fwsShop = FwsShop.get(fwsShopId)
//        def name = fwsShop.name
//        def gongnenglist = FwsGongNeng.list()
//        def departmentList = fwsShop.department
//        [fwsUserInstance: new FwsUser(params), id: fwsShopId, name: name, gongnenglist: gongnenglist, departmentList: departmentList]
        def fwsShopId = session.fwsUser.fwsShop.id
        def fwsShop = FwsShop.get(fwsShopId)
        def name = fwsShop.name
        def gongnengList = FwsGongNeng.list()
        def departmentList = fwsShop.department
        [fwsUserInstance: new FwsUser(params), id: fwsShopId, name: name, gongnenglist: gongnengList, departmentList: departmentList]
    }

    //Save
    def fwsUserSave() {
        //创建新对象
        def fwsUserInstance = new FwsUser(params)
        //获取功能列表
        def gongnenglist = params.gongneng
        //获取部门id
        def departmentId = params.departmentId
        //获取服务商Id
        def fwsShopId = params.fwsShopId
        //新建对象的服务商绑定
        fwsUserInstance.fwsShop = FwsShop.get(fwsShopId)
        //新建对象的部门绑定
        fwsUserInstance.department = Department.get(departmentId)
        def i = 0
        if (!fwsUserInstance.save(flush: true)) {
            render(view: "fwsUserCreate", model: [fwsUserInstance: fwsUserInstance])
            return
        }
        for (i; i < gongnenglist.size(); i++) {
            def userId = fwsUserInstance.id
            def gongnengId = gongnenglist[i]
            def fwsRole = new FwsUserRole()
            fwsRole.fwsUserRoleTime = new Date()
            fwsRole.fwsUserRoleGongNengId = gongnengId
            fwsRole.fwsUserRoleId = userId
            fwsRole.save()
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'ybUser.label', default: 'YbUser'), fwsUserInstance.id])
        redirect(action: "fwsUserList", id: fwsShopId)
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
    def fwsUserEdit(Long id) {
        def fwsUserInstance = FwsUser.get(id)
        def fwsShopId = fwsUserInstance.fwsShopId
        def departmentList = FwsShop.get(fwsShopId).department
        def gongnenglist = FwsUserRole.findAllByFwsUserRoleId(id)
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
        def gongnenglistrole = FwsGongNeng.list()

        if (!fwsUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsUser.label', default: 'FwsUser'), id])
            redirect(action: "fwsUserList")
            return
        }

        [fwsUserInstance: fwsUserInstance, name: fwsUserInstance.fwsShop.name, id: fwsShopId, departmentList: departmentList, gongnenglistrole: gongnenglistrole, listgongneng: listgongneng]
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
}