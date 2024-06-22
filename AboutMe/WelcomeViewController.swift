//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Ульяна Евстигнеева on 22.06.2024.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUser: UILabel!
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUser.text = "Welcome, \(name ?? "")!"
    }
}
