//
//  ViewController.swift
//  XCUITests_UIImagePickerController_Bitrise
//
//  Created by Simon Liotier on 29/09/2020.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func pickImage(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
}

extension ViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        print(info)
        picker.dismiss(animated: true)
    }
}
