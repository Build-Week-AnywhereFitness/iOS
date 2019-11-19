//
//  InstructorLoginViewController.swift
//  AnywhereFitness
//
//  Created by Niranjan Kumar on 11/18/19.
//  Copyright © 2019 NarJesse. All rights reserved.
//

import UIKit
enum LoginType {
    case signUp
    case signIn
}
class InstructorLoginViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var loginControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    // MARK: - Variables
    var classController: ClassController?
    var loginType: LoginType = .signUp
    override func viewDidLoad() {
        super.viewDidLoad()
        enterButton.layer.cornerRadius = 8.0
    }
    @IBAction func loginSegmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            loginType = .signUp
            enterButton.setTitle("Sign Up", for: .normal)
        } else {
            loginType = .signIn
            enterButton.setTitle("Sign In", for: .normal)
        }
    }
    @IBAction func enterButtonTapped(_ sender: UIButton) {
        guard let classController = classController else { return }
        guard let fullName = nameTextField.text, !fullName.isEmpty else { return }
        guard let username = usernameTextField.text, !username.isEmpty else { return }
        guard let password = passwordTextField.text, !password.isEmpty else { return }
      let instructor = Instructor(name: fullName, email: username, password: password)
        if loginType == .signUp {
        }
    }
}
