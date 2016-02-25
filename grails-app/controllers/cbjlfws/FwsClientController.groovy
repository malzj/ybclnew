package cbjlfws

import org.springframework.dao.DataIntegrityViolationException

class FwsClientController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [fwsClientInstanceList: FwsClient.list(params), fwsClientInstanceTotal: FwsClient.count()]
    }

    def create() {
        [fwsClientInstance: new FwsClient(params)]
    }

    def save() {
        def fwsClientInstance = new FwsClient(params)
        if (!fwsClientInstance.save(flush: true)) {
            render(view: "create", model: [fwsClientInstance: fwsClientInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), fwsClientInstance.id])
        redirect(action: "show", id: fwsClientInstance.id)
    }

    def show(Long id) {
        def fwsClientInstance = FwsClient.get(id)
        if (!fwsClientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), id])
            redirect(action: "list")
            return
        }

        [fwsClientInstance: fwsClientInstance]
    }

    def edit(Long id) {
        def fwsClientInstance = FwsClient.get(id)
        if (!fwsClientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), id])
            redirect(action: "list")
            return
        }

        [fwsClientInstance: fwsClientInstance]
    }

    def update(Long id, Long version) {
        def fwsClientInstance = FwsClient.get(id)
        if (!fwsClientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (fwsClientInstance.version > version) {
                fwsClientInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'fwsClient.label', default: 'FwsClient')] as Object[],
                        "Another user has updated this FwsClient while you were editing")
                render(view: "edit", model: [fwsClientInstance: fwsClientInstance])
                return
            }
        }

        fwsClientInstance.properties = params

        if (!fwsClientInstance.save(flush: true)) {
            render(view: "edit", model: [fwsClientInstance: fwsClientInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), fwsClientInstance.id])
        redirect(action: "show", id: fwsClientInstance.id)
    }

    def delete(Long id) {
        def fwsClientInstance = FwsClient.get(id)
        if (!fwsClientInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), id])
            redirect(action: "list")
            return
        }

        try {
            fwsClientInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'fwsClient.label', default: 'FwsClient'), id])
            redirect(action: "show", id: id)
        }
    }
}
