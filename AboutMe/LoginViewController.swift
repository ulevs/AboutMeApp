//
//  ViewController.swift
//  AboutMe
//
//  Created by Ульяна Евстигнеева on 20.06.2024.
//



import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwardTF: UITextField!
    
    private let userName = "Uliana"
    private let passward = "12345"
    
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
        guard let passwardInput = passwardTF.text, !passwardInput.isEmpty else {
            showAlert(
                withTitle: "field cannot be empty",
                andMessage: "enter your passward"
            )
            return
        }
        guard userNameInput == userName, passwardInput == passward else {
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
    @IBAction func showPassward() {
        showAlert(withTitle: "your passward", andMessage: "12345")
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwardTF.text = nil
    }

    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAktion = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAktion)
        present(alert, animated: true)
    }
}

