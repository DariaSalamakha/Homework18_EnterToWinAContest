//
//  ViewController.swift
//  Contest
//
//  Created by Daria Salamakha on 05.05.2022.
//

import UIKit
// MARK: - ViewController
class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var emailTextField: UITextField!
    
    // MARK: - Actions
    @IBAction func sendButtonTapped(_ sender: UIButton) {
        if (emailTextField.text?.contains("@"))! {
            self.performSegue(withIdentifier: "succesSegue", sender: self)
        } else {
            UITextField.animate(withDuration: 1.0, animations: {
                self.emailTextField.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            }){ (_) in
                UITextField.animate(withDuration: 1.0) {
                    self.emailTextField.transform = .identity
                }
            }

        }
    }
    
}

