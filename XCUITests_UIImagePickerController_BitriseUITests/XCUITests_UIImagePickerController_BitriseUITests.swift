import XCTest

class XCUITests_UIImagePickerController_BitriseUITests: XCTestCase {
    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {}

    func testPickImage() throws {
        let app = XCUIApplication()
        app.launch()

        // Tap the "Pick image" button that will trigger the image picker.
        let pickImageButton = app.buttons["Pick image"]
        pickImageButton.tap()

        // The image picker displays a collection of images whose names look like: "Photo, March 30, 2018, 9:14 PM".
        // We pick the first photo.
        let predicate = NSPredicate(format: "label CONTAINS %@", "Photo")
        let photo = app.images.containing(predicate).firstMatch
        XCTAssert(photo.waitForExistence(timeout: 10)) // Generous timeout in case the image picker takes time to open.
        photo.tap()
    }
}
