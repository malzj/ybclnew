package cbjlfws



import org.junit.*
import grails.test.mixin.*

@TestFor(CarMessageController)
@Mock(CarMessage)
class CarMessageControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/carMessage/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.carMessageInstanceList.size() == 0
        assert model.carMessageInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.carMessageInstance != null
    }

    void testSave() {
        controller.save()

        assert model.carMessageInstance != null
        assert view == '/carMessage/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/carMessage/show/1'
        assert controller.flash.message != null
        assert CarMessage.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/carMessage/list'

        populateValidParams(params)
        def carMessage = new CarMessage(params)

        assert carMessage.save() != null

        params.id = carMessage.id

        def model = controller.show()

        assert model.carMessageInstance == carMessage
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/carMessage/list'

        populateValidParams(params)
        def carMessage = new CarMessage(params)

        assert carMessage.save() != null

        params.id = carMessage.id

        def model = controller.edit()

        assert model.carMessageInstance == carMessage
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/carMessage/list'

        response.reset()

        populateValidParams(params)
        def carMessage = new CarMessage(params)

        assert carMessage.save() != null

        // test invalid parameters in update
        params.id = carMessage.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/carMessage/edit"
        assert model.carMessageInstance != null

        carMessage.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/carMessage/show/$carMessage.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        carMessage.clearErrors()

        populateValidParams(params)
        params.id = carMessage.id
        params.version = -1
        controller.update()

        assert view == "/carMessage/edit"
        assert model.carMessageInstance != null
        assert model.carMessageInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/carMessage/list'

        response.reset()

        populateValidParams(params)
        def carMessage = new CarMessage(params)

        assert carMessage.save() != null
        assert CarMessage.count() == 1

        params.id = carMessage.id

        controller.delete()

        assert CarMessage.count() == 0
        assert CarMessage.get(carMessage.id) == null
        assert response.redirectedUrl == '/carMessage/list'
    }
}
