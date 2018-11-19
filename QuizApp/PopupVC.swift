//
//  PopupVC.swift
//  QuizApp
//
//  Created by R J Herrema on 18/11/2018.
//  Copyright © 2018 R J Herrema. All rights reserved.
//

import UIKit

class PopupVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: "imageSetting") {
            imageView.image = UIImage(imageLiteralResourceName: "logo_orange.jpg")
            imageSwitch.isOn = true
        } else {
            imageView.image = UIImage(imageLiteralResourceName: "logo_brown.jpg")
            imageSwitch.isOn = false
        }
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var imageSwitch: UISwitch!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func dismissVC(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func setting(_ sender: UISwitch) {
        if sender.isOn {
            UserDefaults.standard.set(true, forKey: "imageSetting")
            imageView.image = UIImage(imageLiteralResourceName: "logo_orange.jpg")
            UserDefaults.standard.set(1.0, forKey: "red")
            UserDefaults.standard.set(0.0, forKey: "blue")
        } else {
            UserDefaults.standard.set(false, forKey: "imageSetting")
            imageView.image = UIImage(imageLiteralResourceName: "logo_brown.jpg")
            UserDefaults.standard.set(0.0, forKey: "red")
            UserDefaults.standard.set(1.0, forKey: "blue")
        }
    }
    
}
