//
//  ModalHelper.swift
//  UIKitApp
//
//  Created by 1044336 on 22/09/22.
//

import Foundation
import UIKit

class ModalHelper{
    
    func createSimpleMoodal() -> SuccessModal {
        
        let storboard  = UIStoryboard(name: "Main", bundle: .main)
        let modal = storboard.instantiateViewController(identifier: "SuccessModal") as!  SuccessModal
        return modal
    }
}
