//
//  ViewController.swift
//  ios-cart-demo
//
//  Created by Kelvin Fok on 22/9/19.
//  Copyright © 2019 Kelvin Fok. All rights reserved.
//

import UIKit

struct UserProfile {
    let name: String
    let age: Int
    let hobby: String
    let favouriteColor: UIColor
}

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var hobbyTextField: UITextField!
    @IBOutlet weak var colorSegmentedControl: UISegmentedControl!
    
    private let showDetailsSegue = "showDetails"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .groupTableViewBackground
    }

    @IBAction func submitButtonPressed(_ sender: Any) {
        
        var favouriteColor: UIColor
        
        let name = nameTextField.text ?? ""
        let age = Int(ageTextField.text!) ?? 0
        let hobby = hobbyTextField.text ?? ""
        let index = colorSegmentedControl.selectedSegmentIndex
        
        switch index {
        case 0:
            favouriteColor = .green
        default:
            favouriteColor = .yellow
        }
        
        let userProfile = UserProfile(name: name, age: age, hobby: hobby, favouriteColor: favouriteColor)
        
        performSegue(withIdentifier: showDetailsSegue, sender: userProfile)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == showDetailsSegue, let userProfile = sender as? UserProfile {
            let destination = segue.destination as! DetailViewController
            destination.userProfile = userProfile
        }
    }
    
}

