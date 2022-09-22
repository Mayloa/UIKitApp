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
        let validEmail = self.validmail()
        if !validEmail {
            self.email.setupErrorStyle()
        } else {
            self.email.setupViewStyle()
        }
        let validFullName = self.validFullName()
        if !validFullName {
            self.fullName.setupErrorStyle()
        } else {
            self.fullName.setupViewStyle()
        }
        
        let validPassword = self.validPassword()
        
        if !validPassword {
            self.password.setupErrorStyle()
        } else {
            self.password.setupViewStyle()
        }
        
        guard let email = self.email.text else { return }
        UserDefaults.standard.setValue(email, forKey: "userEmail")
    }
    
   private func validmail() -> Bool{
        return self.email.campo_vacio() || self.email.correo_valido() ? false : true
    }
    
    private func validFullName() -> Bool{
        return  self.fullName.campo_vacio() ? false : true
    }
    
    private func validPassword() -> Bool{
        return  self.password.campo_vacio() ? false : true
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
