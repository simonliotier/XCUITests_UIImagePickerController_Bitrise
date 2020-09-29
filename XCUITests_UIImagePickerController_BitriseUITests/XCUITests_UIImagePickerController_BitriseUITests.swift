import XCTest

class XCUITests_UIImagePickerController_BitriseUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {}

    func testPickImage() throws {
        let app = XCUIApplication()
        app.launch()

        let pickImageButton = app.buttons["Pick image"]
        pickImageButton.tap()

        let predicate = NSPredicate(format: "label CONTAINS %@", "Photo")
        let photo = app.images.containing(predicate).firstMatch
        XCTAssert(photo.waitForExistence(timeout: 10))
        photo.tap()
    }
}
