package cbjlfws



import org.junit.*
import grails.test.mixin.*

@TestFor(FwsClientController)
@Mock(FwsClient)
class FwsClientControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/fwsClient/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.fwsClientInstanceList.size() == 0
        assert model.fwsClientInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.fwsClientInstance != null
    }

    void testSave() {
        controller.save()

        assert model.fwsClientInstance != null
        assert view == '/fwsClient/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/fwsClient/show/1'
        assert controller.flash.message != null
        assert FwsClient.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/fwsClient/list'

        populateValidParams(params)
        def fwsClient = new FwsClient(params)

        assert fwsClient.save() != null

        params.id = fwsClient.id

        def model = controller.show()

        assert model.fwsClientInstance == fwsClient
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/fwsClient/list'

        populateValidParams(params)
        def fwsClient = new FwsClient(params)

        assert fwsClient.save() != null

        params.id = fwsClient.id

        def model = controller.edit()

        assert model.fwsClientInstance == fwsClient
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/fwsClient/list'

        response.reset()

        populateValidParams(params)
        def fwsClient = new FwsClient(params)

        assert fwsClient.save() != null

        // test invalid parameters in update
        params.id = fwsClient.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/fwsClient/edit"
        assert model.fwsClientInstance != null

        fwsClient.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/fwsClient/show/$fwsClient.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        fwsClient.clearErrors()

        populateValidParams(params)
        params.id = fwsClient.id
        params.version = -1
        controller.update()

        assert view == "/fwsClient/edit"
        assert model.fwsClientInstance != null
        assert model.fwsClientInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/fwsClient/list'

        response.reset()

        populateValidParams(params)
        def fwsClient = new FwsClient(params)

        assert fwsClient.save() != null
        assert FwsClient.count() == 1

        params.id = fwsClient.id

        controller.delete()

        assert FwsClient.count() == 0
        assert FwsClient.get(fwsClient.id) == null
        assert response.redirectedUrl == '/fwsClient/list'
    }
}
