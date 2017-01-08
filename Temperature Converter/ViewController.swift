//
//  ViewController.swift
//
//  Created by Ali Mazeh & Husein Dakroub on 1/6/17.
//  Copyright © 2017 Ali Mazeh & Husein Dakroub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    var textBoxValue = ""
    
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
        
    }
    
    @IBAction func oneTapped(_ sender: Any) {
        // get current value in text box
        textBox.text = textBoxValue
        // append the number 1 to the end of it
        textBoxValue += "1"
        // set the text box to the new value
        textBox.text = textBoxValue
    }

    @IBAction func twoTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "2"
        textBox.text = textBoxValue
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "3"
        textBox.text = textBoxValue
    }
    
    @IBAction func fourTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "4"
        textBox.text = textBoxValue
    }
    
    @IBAction func fiveTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "5"
        textBox.text = textBoxValue
    }
    
    @IBAction func sixTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "6"
        textBox.text = textBoxValue
    }
    
    @IBAction func sevenTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "7"
        textBox.text = textBoxValue
    }
    
    @IBAction func eightTapped(_ sender: Any) {
        textBox.text = textBoxValue
        textBoxValue += "8"
        textBox.text = textBoxValue
    }
    
    @IBAction func nineTapped(_ sender: Any) {
        textBox.text = textBoxValue
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

