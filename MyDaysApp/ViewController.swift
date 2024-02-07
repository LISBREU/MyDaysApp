//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Ilnur Shabanov on 06.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var infoLabel: UILabel!
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultButton.layer.cornerRadius = 12
    }

    @IBAction func reultButtonTapped() {
        infoLabel.text = "You are happy along \(numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}
