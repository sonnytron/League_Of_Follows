//
//  LoginViewController.swift
//  Leage of Follows
//
//  Created by Sonny Rodriguez on 7/5/16.
//  Copyright © 2016 Sonnytron. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, LoginProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func apiKeyEntered(key: String) {
        // do something with ApiKey
    }
    
    func keyFailed(alertText: String) {
        displayKeyAlert(alertText)
    }
    
    func displayKeyAlert(message: String) {
        let ac = UIAlertController(title: "Warning!", message: message, preferredStyle: .Alert)
        ac.addAction(UIAlertAction(title: "OK", style: .Default) { _ in
            ac.dismissViewControllerAnimated(true, completion: nil)
        })
    }
}
