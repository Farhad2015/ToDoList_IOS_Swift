//
//  SecondViewController.swift
//  To Do App
//
//  Created by Mahmudur Rahman on 8/4/17.
//  Copyright © 2017 Code Mask. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txtInput: UITextField!
    @IBAction func saveData(_ sender: Any) {
        let itemObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        
        if let tempItems = itemObject as? [String] {
            items = tempItems
            items.append(txtInput.text!)
            print(items)
        } else {
            items = [txtInput.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        txtInput.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

