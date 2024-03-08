//
//  ViewController.swift
//  EmApp2
//
//  Created by Taléo Olivio Gorloo on 2024-03-07.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = 
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
        validateAuth()
    }
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
    
    


}

