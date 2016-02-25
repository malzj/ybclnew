package cbjlfws

class FwsClient {
    String username
    String password
    String phone
    String name
    String sex
    String address
    String birthday
    String company
    String qq
    static  hasOne = [fwsShop:FwsShop]
    static  hasMany = [carMessage:CarMessage]

    static constraints = {
//        carMessage(nullable: true)

    }
}
