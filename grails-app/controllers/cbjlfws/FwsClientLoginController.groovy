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



//王钧民
    def fwsClientDepartmentList(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def fwsUser = session.fwsUser
        def fwsShop = FwsShop.get(fwsUser.fwsShop.id)
        def name = fwsShop.name
        def fwsClientDepartmentList = Department.findAllByFwsShop(fwsShop)

        [fwsClientDepartmentList: fwsClientDepartmentList, id: fwsUser.fwsShop.id,name: name, fwsClientDepartmentInstanceTotal: Department.countByFwsShop(fwsShop)]
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






}






























