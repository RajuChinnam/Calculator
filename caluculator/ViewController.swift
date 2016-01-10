//
//  ViewController.swift
//  caluculator
//
//  Created by Kanakaraju Chinnam on 12/28/15.
//  Copyright © 2015 Sparity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber: Int? = 0
    var secondNumber: Int? = 0
    var position = ""
    
    
    @IBOutlet weak var answer: UILabel!
    
    @IBAction func zero(sender: AnyObject) {
        answer.text = answer.text! + "0"
        
    }
    @IBAction func one(sender: AnyObject) {
        answer.text = answer.text! + "1"
        
    }
    @IBAction func two(sender: AnyObject) {
        answer.text = answer.text! + "2"
    }
    
    @IBAction func three(sender: AnyObject) {
        answer.text = answer.text! + "3"
    }

    @IBAction func four(sender: AnyObject) {
        answer.text = answer.text! + "4"
    }
    @IBAction func five(sender: AnyObject) {
        answer.text = answer.text! + "5"
    }
    
    @IBAction func six(sender: AnyObject) {
    
    answer.text = answer.text! + "6"
    }
    
    @IBAction func seven(sender: AnyObject) {
    
    answer.text = answer.text! + "7"
    }
    
    @IBAction func eight(sender: AnyObject) {
        answer.text = answer.text! + "8"
    }
    
    @IBAction func nine(sender: AnyObject) {
        answer.text = answer.text! + "9"
    }
    
    @IBAction func clear(sender: AnyObject) {
        answer.text = ""
    }
    
    @IBAction func divide(sender: AnyObject) {
        firstNumber = Int(answer.text!)
        position = sender.currentTitle!!
        answer.text = ""
    }
    
    @IBAction func multiply(sender: AnyObject) {
        firstNumber = Int(answer.text!)
        position = sender.currentTitle!!
        answer.text = ""
    }
    @IBAction func add(sender: AnyObject) {
        firstNumber = Int(answer.text!)
        print("firstNumber \(firstNumber) answer text = \(answer.text)")
        position = sender.currentTitle!!
        answer.text = ""//reset the result box//
    }
    
    
    @IBAction func subtract(sender: AnyObject) {
        firstNumber = Int(answer.text!)
        position = sender.currentTitle!!
        answer.text = ""
    }
    
    @IBAction func equal(sender: AnyObject) {
        secondNumber = Int(answer.text!)
        if position == "+" {
            answer.text = String(firstNumber! + secondNumber!)
            } else if  position == "-"{
            answer.text = String(firstNumber! - secondNumber!)
        } else if position == "*"{
            answer.text = String(firstNumber! * secondNumber!)
        }
        else if position == "%"{
            answer.text = String(firstNumber! / secondNumber!)
        }
    }
    
    override func viewDidLoad() {
        answer.text = ""

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

