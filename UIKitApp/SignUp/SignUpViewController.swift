//
//  SignUpViewController.swift
//  UIKitApp
//
//  Created by Laura Anguiano on 15/09/22.
//

import UIKit

final class SignUpViewController: UIViewController {

    @IBOutlet weak var email: PrimaryTextField!
    @IBOutlet weak var fullName: PrimaryTextField!
    @IBOutlet weak var password: PrimaryTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    @IBAction func didTapSignUp(_ sender: Any) {
        let emailEmpty = true
        
//        if emailEmpty {
//            self.email.setupErrorStyle()
//        } else {
//            self.email.setupViewStyle()
//        }
        
        
    }
    
    @IBAction func didTapSignIn(_ sender: Any) {
    }
}

// MARK: - Static Methods
extension SignUpViewController {
    static func getViewController() -> SignUpViewController {
        let storyboard = UIStoryboard(name: "SignUp", bundle: nil)
        guard let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else {
            fatalError("ViewController must be of type SignUpViewController")
        }
        return signUpViewController
    }
}
