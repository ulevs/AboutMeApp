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
        guard let userNameInput = userNameTV.text, !userNameInput.isEmpty else {
            showAlert(withMessage: "поле не может быть пустым")
            return
        }
        guard let passwardInput = passwardTV.text, !passwardInput.isEmpty else {
            showAlert(withMessage: "поле не может быть пустым")
            return
        }
        guard userNameInput == userName, passwardInput == passward else {
            showAlert(withMessage: "не верный логин или пароль")
            return
        }

    }
    
    @IBAction func showUsername() {
        showAlert(withMessage: "Uliana")
    }
    @IBAction func showPassward() {
        showAlert(withMessage: "12345")
    }
    
    private func showAlert(withMessage message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let okAktion = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAktion)
        present(alert, animated: true)
    }
}

