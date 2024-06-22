//
//  ViewController.swift
//  AboutMe
//
//  Created by Ульяна Евстигнеева on 20.06.2024.
//



import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "Uliana"
    private let password = "12345"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as? WelcomeViewController
        welcomeVC?.name = userName
    }
    
    @IBAction func logInButton() {
        guard let userNameInput = userNameTF.text, !userNameInput.isEmpty else {
            showAlert(
                withTitle: "field cannot be empty",
                andMessage: "enter your name"
            )
            return
        }
        guard let passwordInput = passwordTF.text, !passwordInput.isEmpty else {
            showAlert(
                withTitle: "field cannot be empty",
                andMessage: "enter your password"
            )
            return
        }
        guard userNameInput == userName, passwordInput == password else {
            showAlert(
                withTitle: "wrong login or password",
                andMessage: "try again"
            )
            return
        }
    }
    
    @IBAction func showUsername() {
        showAlert(withTitle: "your name", andMessage: "Uliana")
    }
    @IBAction func showPassword() {
        showAlert(withTitle: "your password", andMessage: "12345")
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }

    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAktion = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAktion)
        present(alert, animated: true)
    }
}

