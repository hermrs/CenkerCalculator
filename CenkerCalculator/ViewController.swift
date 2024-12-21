//
//  ViewController.swift
//  CenkerCalculator
//
//  Created by Üzeyir Cenker Arda on 21.12.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numbber1: UITextField!
    @IBOutlet weak var numbber2: UITextField!
  
    @IBOutlet weak var resultTextField: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusButton(_ sender: Any) {
        let firstNumber = Int(numbber1.text!)
        let secondNumber = Int(numbber2.text!)
        let result = calculatePlus(x: firstNumber!, y: secondNumber!)
        resultTextField.text = String(result)
    }
    @IBAction func minusButton(_ sender: Any) {
        let firstNumber = Int(numbber1.text!)
        let secondNumber = Int(numbber2.text!)
        let result = calculateMinus(x: firstNumber!, y: secondNumber!)
        resultTextField.text = String(result)
        
    }
    
    @IBAction func divideButton(_ sender: Any) {
        let firstNumber = Int(numbber1.text!)
        let secondNumber = Int(numbber2.text!)
        let result = calculateDivide(x: firstNumber!, y: secondNumber!)
        if result >= 0{
            resultTextField.text = String(result)
        }else {
            resultTextField.text = "Error"
        }
        
    }
    @IBAction func timesButton(_ sender: Any) {
        let firstNumber = Int(numbber1.text!)
        let secondNumber = Int(numbber2.text!)
        let result = calculateTimes(x: firstNumber!, y: secondNumber!)
        resultTextField.text = String(result)
    }
    func calculatePlus(x:Int,y:Int) -> Int{
        return x+y
    }
    func calculateMinus(x:Int,y:Int) -> Int{
        return x-y
    }
    func calculateDivide(x:Int,y:Int) -> Int{
        return x/y
    }
    func calculateTimes(x:Int,y:Int) -> Int{
        return x*y
    }
    
}

