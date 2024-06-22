//
//  ViewController.swift
//  AboutMe
//
//  Created by Ульяна Евстигнеева on 20.06.2024.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }

    private let userName = "Uliana"
    private let passward = "12345"
    
    @IBOutlet var userNameTV: UITextField!
    @IBOutlet var passwardTV: UITextField!
    
    @IBAction func logInButton() {
        if userName ==  userNameTV.text && passward == passwardTV.text {
            // открываем страницу
        }
    }
    
}

