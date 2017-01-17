//  ViewController.swift
//
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
    
    func insert(string:String,ind:Int) -> String {
        return  String(self.characters.prefix(ind)) + string + String(self.characters.suffix(self.characters.count-ind))
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)), upper: min(length, max(0, r.upperBound))))
        
        let start = index(startIndex, offsetBy: range.lowerBound)
        
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return self[Range(start ..< end)]
    }
}

class ViewController: UIViewController {
    var textBoxValue = ""
    var zeroCheck = ""
    var isDecimal = false
    var isDiv = false
    var isAdd = false
    var isSub = false
    var isMult = false
    var isRepeat = false
    var isNeg = false;
    var firstValue:Double = 0
    var secondValue:Double = 0
    var result:Double = 0
    

    @IBOutlet weak var textBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clearButtonTapped(_ sender: Any) {
        textBox.text = "0"
        textBoxValue = "0"
        isDecimal = false
    }
    
    @IBAction func zeroTapped(_ sender: Any) {
        // check if user is tapping this number immediatly after tapping an operation
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            // get current value in text box
            textBoxValue = self.textBox.text!
        }
        // check to not allow multiple leading zeros
        if textBoxValue != "0" {
            // append the number one to the end of it
            textBoxValue += "0"
            // set text box to new value
            textBox.text = textBoxValue
        }
        // reset repitition value
        isRepeat = false
    }
    
    @IBAction func oneTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "1"
        textBox.text = textBoxValue
        isRepeat = false
    }

    @IBAction func twoTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        
        textBoxValue += "2"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "3"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func fourTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else {
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "4"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func fiveTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "5"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func sixTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "6"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func sevenTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "7"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func eightTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "8"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func nineTapped(_ sender: Any) {
        if isRepeat == true {
            textBoxValue.removeAll()
        }
        else{
            textBoxValue = self.textBox.text!
            zeroCheck = textBoxValue[0]
            
            if zeroCheck == "0" && isDecimal == false {
                textBoxValue.removeAll()
            }
        }
        
        textBoxValue += "9"
        textBox.text = textBoxValue
        isRepeat = false
    }
    
    @IBAction func negButtonTapped(_ sender: Any) {
        textBoxValue = self.textBox.text!
        
        if isNeg == false {
            textBoxValue = textBoxValue.insert(string: "-", ind: 0)
            isNeg = true
        }
        else if isNeg == true {
            textBoxValue = textBoxValue.replacingOccurrences(of: "-", with: "", options: NSString.CompareOptions.literal, range:nil)
            isNeg = false
        }
        
        textBox.text = textBoxValue
    }
    
    @IBAction func decimalButtonTapped(_ sender: Any) {
        textBoxValue = self.textBox.text!
        
        if isDecimal == false {
            textBoxValue += "."
        }
        
        textBox.text = textBoxValue
        isDecimal = true
        
    }
    
    @IBAction func percentButtonPressed(_ sender: Any) {
        firstValue = Double(self.textBox.text!)!
        firstValue /= 100
        textBox.text = String(firstValue)
    }
    
    @IBAction func divButtonPressed(_ sender: Any) {
        firstValue = Double(self.textBox.text!)!
        isDiv = true
        isAdd = false
        isMult = false
        isSub = false
        isRepeat = true
    }
    
    @IBAction func multButtonPressed(_ sender: Any) {
        firstValue = Double(self.textBox.text!)!
        isDiv = false
        isAdd = false
        isMult = true
        isSub = false
        isRepeat = true
    }
    
    @IBAction func subButtonTapped(_ sender: Any) {
        firstValue = Double(self.textBox.text!)!
        isDiv = false
        isAdd = false
        isMult = false
        isSub = true
        isRepeat = true
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        firstValue = Double(self.textBox.text!)!
        isDiv = false
        isAdd = true
        isMult = false
        isSub = false
        isRepeat = true
    }
    
    @IBAction func equalButtonTapped(_ sender: Any) {
        secondValue = Double(self.textBox.text!)!
        
        if isAdd == true {
            result = firstValue + secondValue
        }
        if isSub == true {
            result = firstValue - secondValue
        }
        if isDiv == true {
            result = firstValue / secondValue
        }
        if isMult == true {
            result = firstValue * secondValue
        }
        
        isDiv = false
        isAdd = false
        isSub = false
        isMult = false
        isRepeat = true
        
        textBox.text = String(result)
        
    }
}

