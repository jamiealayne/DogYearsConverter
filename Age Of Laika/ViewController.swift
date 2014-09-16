//
//  ViewController.swift
//  Age Of Laika
//
//  Created by Jamie Layne on 9/16/14.
//  Copyright (c) 2014 Jamie Layne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var humanYearsField: UITextField!
	@IBOutlet var dogYearsLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func convertToDogYears(sender: AnyObject) {
		
		let humanYears = humanYearsField.text.toInt()!
		var dogYears: Double
		
		if humanYears <= 2 {
			// dog years = 10.5/year for first 2 years
			dogYears = Double(humanYears) * 10.5
		} else {
			// 10.5 for first 2 years + 4 years for every year afterwards
			dogYears = Double(21 + ( (humanYears - 2) * 4) )
		}
		
		dogYearsLabel.hidden = false
		dogYearsLabel.text = "\(humanYears) human years is \(dogYears) dog years"
		
		// Clear out previous input
		humanYearsField.text = ""
		humanYearsField.resignFirstResponder()
		
	}

}

