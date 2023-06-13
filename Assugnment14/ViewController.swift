//
//  ViewController.swift
//  Assugnment14
//
//  Created by macbook  on 13.06.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create boxes
        let redBox = UIView()
        let greenBox = UIView()
        let blueBox = UIView()
        let yellowBox = UIView()
        
        //Add color
        redBox.backgroundColor = .red
        greenBox.backgroundColor = .green
        blueBox.backgroundColor = .blue
        yellowBox.backgroundColor = .yellow
        
        //Add boxes to the page
        self.view.addSubview(redBox)
        self.view.addSubview(greenBox)
        self.view.addSubview(blueBox)
        self.view.addSubview(yellowBox)
        
        let margins = self.view.layoutMarginsGuide
        
        //Disable translatesAutoresizingMaskIntoConstraints
        redBox.translatesAutoresizingMaskIntoConstraints = false
        greenBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        yellowBox.translatesAutoresizingMaskIntoConstraints = false
        
        //Add constraints
        redBox.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).isActive = true
        redBox.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20).isActive = true
        
        greenBox.leadingAnchor.constraint(equalTo: redBox.trailingAnchor, constant: 20).isActive = true
        greenBox.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20).isActive = true
        greenBox.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -20).isActive = true
        
        blueBox.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).isActive = true
        blueBox.topAnchor.constraint(equalTo: redBox.bottomAnchor, constant: 20).isActive = true
        blueBox.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -20).isActive = true
        
        yellowBox.leadingAnchor.constraint(equalTo: blueBox.trailingAnchor, constant: 20).isActive = true
        yellowBox.topAnchor.constraint(equalTo: greenBox.bottomAnchor, constant: 20).isActive = true
        yellowBox.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -20).isActive = true
        yellowBox.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -20).isActive = true
        
        //Bind widths and heights
        greenBox.widthAnchor.constraint(equalTo: redBox.widthAnchor).isActive = true
        blueBox.widthAnchor.constraint(equalTo: redBox.widthAnchor).isActive = true
        yellowBox.widthAnchor.constraint(equalTo: redBox.widthAnchor).isActive = true
        
        greenBox.heightAnchor.constraint(equalTo: redBox.heightAnchor).isActive = true
        blueBox.heightAnchor.constraint(equalTo: redBox.heightAnchor).isActive = true
        yellowBox.heightAnchor.constraint(equalTo: redBox.heightAnchor).isActive = true
    }


}

