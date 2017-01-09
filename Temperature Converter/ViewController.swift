//  ViewController.swift
//
//  Created by Ali Mazeh & Husein Dakroub on 1/6/17.
//  Copyright © 2017 Ali Mazeh & Husein Dakroub. All rights reserved.
//

import UIKit

// extension to allow use of multiple string subscripts
extension String {
    
    var length: Int {
        return self.characters.count
    }
    
    subscript (i: Int) -> String {
        return self[Range(i ..< i + 1)]
    }
    
    func substring(from: Int) -> String {
        return self[Range(min(from, length) ..< length)]
    }
    
    func substring(to: Int) -> String {
        return self[Range(0 ..< max(0, to))]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)), upper: min(length, max(0, r.upperBound))))
        
        let start = index(startIndex, offsetBy: range.lowerBound)
        
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return self[Range(start ..< end)]
    }
}

class ViewController: UIViewController {
    

    @IBOutlet weak var textBox: UITextField!
    var textBoxValue = ""
    var zeroCheck = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func equalButtonTapped(_ sender: Any) {
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
    }
    
    @IBAction func zeroTapped(_ sender: Any) {
        // get current value in text box
        textBox.text = textBoxValue;
        // check to not allow multiple leading zeros
        if textBoxValue != "0" {
            // append the number one to the end of it
            textBoxValue += "0"
            // set text box to new value
            textBox.text = textBoxValue
        }
        
    }
    
    @IBAction func oneTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "1"
        textBox.text = textBoxValue
    }

    @IBAction func twoTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "2"
        textBox.text = textBoxValue
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "3"
        textBox.text = textBoxValue
    }
    
    @IBAction func fourTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "4"
        textBox.text = textBoxValue
    }
    
    @IBAction func fiveTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "5"
        textBox.text = textBoxValue
    }
    
    @IBAction func sixTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "6"
        textBox.text = textBoxValue
    }
    
    @IBAction func sevenTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "7"
        textBox.text = textBoxValue
    }
    
    @IBAction func eightTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "8"
        textBox.text = textBoxValue
    }
    
    @IBAction func nineTapped(_ sender: Any) {
        textBox.text = textBoxValue
        zeroCheck = textBoxValue[0]
        
        if zeroCheck == "0" {
            textBoxValue.removeAll()
        }
        
        textBoxValue += "9"
        textBox.text = textBoxValue
    }
    
    @IBAction func negButtonTapped(_ sender: Any) {
    }
    
    @IBAction func decimalButtonTapped(_ sender: Any) {
    }
    
    @IBAction func percentButtonPressed(_ sender: Any) {
    }
    
    @IBAction func divButtonPressed(_ sender: Any) {
    }
    
    @IBAction func multButtonPressed(_ sender: Any) {
    }
    
    @IBAction func subButtonTapped(_ sender: Any) {
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    
    
    
    
    
}

