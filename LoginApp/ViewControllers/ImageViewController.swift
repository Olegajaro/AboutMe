//
//  ImageViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 01.09.2021.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var userImage: UIImageView! {
        didSet {
            userImage.layer.cornerRadius = 15
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userImage.image = UIImage(named: user.person.image)
    }
    
}
