//
//  ViewController.swift
//  XCUITests_UIImagePickerController_Bitrise
//
//  Created by Simon Liotier on 29/09/2020.
//

import PhotosUI
import UIKit

class ViewController: UIViewController {
    @IBAction func pickImage(_ sender: Any) {
        let configuration = PHPickerConfiguration()
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = self
        present(picker, animated: true)
    }
}

extension ViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        print(results)
        picker.dismiss(animated: true)
    }
}
