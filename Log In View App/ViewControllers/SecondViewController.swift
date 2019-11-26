//
//  SecondViewController.swift
//  Log In View App
//
//  Created by Stepan Vasilyeu on 11/26/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var secondVCLabel: UILabel!
    
    var textSecondVC = secondArray[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondVCLabel.text = "Welcom, \(textSecondVC)"
        
        print("textSecondVC - \(textSecondVC)")
    }
    
    @IBAction func closeSecondVC() {
        
        // очистка массива при закрытии SecondViewController
        secondArray = []
        
        // Для очистки TextField при переходе на ViewController,
        // но мой вариант не работает, не разобрался
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let secondVC = segue.destination as! ViewController
            secondVC.userNameTextField.text = ""
            secondVC.passwordTextField.text = ""
        }
        
        dismiss(animated: true)
    }

}
