//
//  ViewController.swift
//  login
//
//  Created by 11k on 10/28/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var forgotUsername: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotUsername{
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else if sender == forgotPassword{
            segue.destination.navigationItem.title = "Forgot Passeword"
        }
        else{
            segue.destination.navigationItem.title = usernameText.text
        }
    }
    
    @IBAction func pressForgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "main1", sender: sender)
    }
    
    @IBAction func pressForgotUsername(_ sender: Any) {
        performSegue(withIdentifier: "main1", sender: sender)
    }
    
    @IBAction func pressLogin(_ sender: Any) {
        
        if usernameText.text != "ImACrow"{
            errorLabel.text = "Incorrect Username"
            errorLabel.isHidden = false
        }
        else if(passwordText.text != "123"){
            errorLabel.text = "Incorrect Password"
            errorLabel.isHidden = false
        }
        else{
            errorLabel.isHidden = true
            performSegue(withIdentifier: "main1", sender: sender)
        }
    }
}

