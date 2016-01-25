package cbjlfws

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

}