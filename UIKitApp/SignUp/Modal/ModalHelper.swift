//
//  ModalHelper.swift
//  UIKitApp
//
//  Created by 1044336 on 22/09/22.
//

import Foundation
import UIKit

class ModalHelper{
    
    static func createSimpleMoodal() -> SuccessModal {
        
        let storboard  = UIStoryboard(name: "SignUp", bundle: .main)
        let modal = storboard.instantiateViewController(identifier: "SuccessModal") as!  SuccessModal
        return modal
    }
}
