//
//  ViewController.swift
//  StreetBuildings
//
//  Created by danny phu on 5/8/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import UIKit

struct Building {
    let name: String;
    let image: String;
}


class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var buildingLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var stackView: UIStackView!
    
    let streets: [Int: [Building]] = [
        12: [
            Building(name: "The Strand",                image: "strand")
        ],
        
        14: [
            Building(name: "The Con Ed Building",       image: "coned"),
            Building(name: "Zeckendorf Towers",         image: "zeckendorf")
        ],
        
        23: [
            Building(name: "The Met Life Building",     image: "metlife")
        ],
        
        34: [
            Building(name: "The Javitz Center",         image: "empire"),
            Building(name: "The Empire State Building", image: "empire")
        ],
        
        42: [
            Building(name: "The Chrysler Building",     image: "chrysler"),
            Building(name: "The United Nations",        image: "un"),
            Building(name: "Grand Central Terminal",    image: "gct")
        ],
        
        72: [
            Building(name: "The Dakota",                image: "dakota")
        ],
        
        89: [
            Building(name: "The Guggenheim",            image: "guggenheim")
        ]
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let s: String = textField.text!;
        let num: Int = Int(s)!;
        
        if let arrayBuildings: [Building] = streets[num] {
            for building: Building in arrayBuildings {
                buildingLabel.text = "\(building.name)";
                imageView.image = UIImage(named: building.image);
            }
        } else {buildingLabel.text = "Error, not a valid number"
        }
    }
    
}
