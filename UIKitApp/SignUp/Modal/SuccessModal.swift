//
//  SuccessModal.swift
//  UIKitApp
//
//  Created by 1044336 on 22/09/22.
//

import UIKit

class SuccessModal: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        _ = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(ir_a_Login), userInfo: nil, repeats: false)
    }
    @objc func ir_a_Login()
    {

        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
