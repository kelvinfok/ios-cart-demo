//
//  DetailViewController.swift
//  ios-cart-demo
//
//  Created by Kelvin Fok on 22/9/19.
//  Copyright © 2019 Kelvin Fok. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var userProfile: UserProfile!
    
    @IBOutlet weak var favouriteColorView: UIView!
    @IBOutlet weak var hobbiesLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        nameLabel.text = userProfile.name
        hobbiesLabel.text = userProfile.hobby
        ageLabel.text = String(describing: userProfile.age)
        favouriteColorView.backgroundColor = userProfile.favouriteColor
    }
}
