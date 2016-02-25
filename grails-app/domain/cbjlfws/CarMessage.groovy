package cbjlfws

class CarMessage {
    String carUserName
    String carNumber
    String carName
    String carType
    String money
    String equipmentId
    String carShelfNumber
    String engineNumber
    static hasOne = [fwsShop:FwsShop,fwsClient:FwsClient]
    static constraints = {
    }
}
