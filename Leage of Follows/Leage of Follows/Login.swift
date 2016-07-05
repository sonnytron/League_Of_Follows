//
//  Login.swift
//  Leage of Follows
//
//  Created by Sonny Rodriguez on 7/5/16.
//  Copyright © 2016 Sonnytron. All rights reserved.
//

import UIKit

protocol LoginProtocol: class {
    func apiKeyEntered(key: String)
    func keyFailed(alertText: String)
}

class Login: UIView, UITextFieldDelegate {
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var titleBackground: UIView?
    @IBOutlet weak var descriptionLabel: UILabel?
    @IBOutlet weak var descriptionBackground: UIView?
    @IBOutlet weak var apiKeyField: UITextField?
    @IBOutlet weak var apiLabel: UILabel?
    @IBOutlet weak var loginBackground: UIView?
    
    weak var loginProtocol: LoginProtocol?
    
    func textFieldDidEndEditing(textField: UITextField) {
        guard let apiKey = textField.text else {
            return
        }
        loginProtocol?.apiKeyEntered(apiKey)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        guard let apiKey = textField.text else {
            loginProtocol?.keyFailed("Please enter a correct API key before continuing to the app. Thank you!")
            return false
        }
        loginProtocol?.apiKeyEntered(apiKey)
        return true
    }
}
