//
//  ViewController.swift
//  DemoAnimation
//
//  Created by Kirill Averyanov on 30/11/2016.
//  Copyright © 2016 Kirill Averyanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var cloudFirstImageView: UIImageView!
    @IBOutlet weak var cloudSecondImageView: UIImageView!
    @IBOutlet weak var cloudThirdImageView: UIImageView!
    
    @IBOutlet weak var birdFirstImageView: UIImageView!
    @IBOutlet weak var birdSecondImageView: UIImageView!
    @IBOutlet weak var birdThirdImageView: UIImageView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 2.0){
            self.loginButton.alpha = 1.0
            self.passwordTextField.alpha = 1.0
            self.loginTextField.alpha = 1.0
        }
        animateClouds(cloud: cloudFirstImageView)
        sleep(1)
        animateClouds(cloud: cloudSecondImageView)
        sleep(1)
        animateClouds(cloud: cloudThirdImageView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loginTextField.alpha = 0.0
        passwordTextField.alpha = 0.0
        loginButton.alpha = 0.0
        
//        loginTextField.center.x -= view.bounds.width
//        passwordTextField.center.x += view.bounds.width
//        loginButton.center.y -= view.bounds.height
        
    }
    
    func animateClouds(cloud: UIImageView){
        //let cloudSpeed = 60.0 / view.frame.size.width
        let duration = 3.0//(view.frame.size.width - cloud.frame.size.width) * cloudSpeed
        UIView.animate(withDuration: TimeInterval(duration), delay: 0.0, options: UIViewAnimationOptions.curveLinear, animations: {
            cloud.frame.origin.x = self.view.frame.size.width
        }) {(_) in
            cloud.frame.origin.x = -cloud.frame.size.width
            self.animateClouds(cloud: cloud)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    


}

