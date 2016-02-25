package cbjlfws

import org.springframework.dao.DataIntegrityViolationException

class CarMessageController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [carMessageInstanceList: CarMessage.list(params), carMessageInstanceTotal: CarMessage.count()]
    }

    def create() {
        [carMessageInstance: new CarMessage(params)]
    }

    def save() {
        def carMessageInstance = new CarMessage(params)
        if (!carMessageInstance.save(flush: true)) {
            render(view: "create", model: [carMessageInstance: carMessageInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), carMessageInstance.id])
        redirect(action: "show", id: carMessageInstance.id)
    }

    def show(Long id) {
        def carMessageInstance = CarMessage.get(id)
        if (!carMessageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), id])
            redirect(action: "list")
            return
        }

        [carMessageInstance: carMessageInstance]
    }

    def edit(Long id) {
        def carMessageInstance = CarMessage.get(id)
        if (!carMessageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), id])
            redirect(action: "list")
            return
        }

        [carMessageInstance: carMessageInstance]
    }

    def update(Long id, Long version) {
        def carMessageInstance = CarMessage.get(id)
        if (!carMessageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (carMessageInstance.version > version) {
                carMessageInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'carMessage.label', default: 'CarMessage')] as Object[],
                        "Another user has updated this CarMessage while you were editing")
                render(view: "edit", model: [carMessageInstance: carMessageInstance])
                return
            }
        }

        carMessageInstance.properties = params

        if (!carMessageInstance.save(flush: true)) {
            render(view: "edit", model: [carMessageInstance: carMessageInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), carMessageInstance.id])
        redirect(action: "show", id: carMessageInstance.id)
    }

    def delete(Long id) {
        def carMessageInstance = CarMessage.get(id)
        if (!carMessageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), id])
            redirect(action: "list")
            return
        }

        try {
            carMessageInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'carMessage.label', default: 'CarMessage'), id])
            redirect(action: "show", id: id)
        }
    }
}
