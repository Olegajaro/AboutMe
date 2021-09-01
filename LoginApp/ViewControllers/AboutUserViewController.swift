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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullName
        
        ageLabel.text = "Age: \(user.person.age)"
        interestsLabel.text = "Interests: \(user.person.interests)"
        footballTeamLabel.text = "Favorite football team: \(user.person.favoriteTeam)"
        bandsLabel.text = "Favorite bands: \(user.person.favoriteBands)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
}
