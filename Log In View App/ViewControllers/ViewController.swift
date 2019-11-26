//
//  ViewController.swift
//  Log In View App
//
//  Created by Stepan Vasilyeu on 11/25/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!

    @IBAction func logInAction() {
        
        if logIn(login: firstArray, password: secondArray) == 2 {
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let secondVC = segue.destination as! SecondViewController
                secondVC.textSecondVC = userNameTextField.text!
            }
            print("1 - \(secondArray)")
        } else {
            print("2 - \(secondArray)")
            showAlertController(title: "Invalid Login or Password", message: "Please, enter correct Login and Password")
            secondArray = [""]
        }
        print("0 - \(secondArray)")
    }
    
    @IBAction func forgotUserNameAction() {
        showAlertController(title: "Ooops!", message: "Your name is User 😃")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlertController(title: "Oooh!", message: "Your password is Password 😆")
    }
    
}



// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    
    // Скрываем клавиатуру нажатием на "Done"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Скрытие клавиатуры по тапу за пределами Text Field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        switch textField.tag {
        case 0:
            secondArray = []
            secondArray.append(textField.text!)
        case 1:
            secondArray.append(textField.text!)
        default: break
        }
    }
}
    

    
// MARK: - Extentions
extension ViewController {
    
    private func showAlertController(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
