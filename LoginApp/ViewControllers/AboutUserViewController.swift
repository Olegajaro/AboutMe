//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Олег Федоров on 28.08.2021.
//

import UIKit

class AboutUserViewController: UIViewController {

    @IBOutlet var userName: UINavigationItem!
    
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var interestsLabel: UILabel!
    @IBOutlet var footballTeamLabel: UILabel!
    @IBOutlet var bandsLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.title = name
        
        ageLabel.text = "Age: \(oleg.person.age)"
        interestsLabel.text = "Interests: \(oleg.person.myInterests)"
        footballTeamLabel.text = "Favorite football team: \(oleg.person.favoriteTeam)"
        bandsLabel.text = "Favorite bands: \(oleg.person.favoriteBands)"
    }

}
