//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 28.08.2021.
//

import UIKit

class AboutUserViewController: UIViewController {

    @IBOutlet var userName: UINavigationItem!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.title = name
    }

}
