//
//  ViewController.swift
//  Caiculator
//
//  Created by xuthus on 15/6/14.
//  Copyright (c) 2015年 xuthus. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{ //定义了一个类
    //有针对的名字       单继承
  
    @IBOutlet weak var display: UILabel!
    //prop !是 类型 未定义
    var userIsInTheMiddletofTypingANumbser: Bool = false
    
    @IBAction func appendDigit(sender: UIButton)  {
        
        let digit = sender.currentTitle!
        if userIsInTheMiddletofTypingANumbser {
             display.text = display.text! + digit
        }else{
             display.text = digit
             userIsInTheMiddletofTypingANumbser = true
        }
       
        println("digit = \(digit)")
    }
    
    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        if userIsInTheMiddletofTypingANumbser {
            enter()
        }
        
        switch operation {
        case "×": performOperation{$0 * $1}
        case "÷": performOperation{$1 / $0}
        case "+": performOperation{$0 + $1}
        case "−": performOperation{$1 - $0}
        default:break
        }
    }
    
    func performOperation(operation:(Double,Double) ->Double){
        if operandStack.count >= 2 {
            //displayValue = operandStack.removeLast() * operandStack.removeLast()
            displayValue = operation(operandStack.removeLast(),operandStack.removeLast())
            enter()
        }
    }
    
//    var operandStack: Array<Double> = Array<Double>()
    var operandStack = Array<Double>()
    
    @IBAction func enter() {
        userIsInTheMiddletofTypingANumbser = false
        operandStack.append(displayValue)
        println("operandStack = \(operandStack)")
    }
    
    
    //转化设置dipaly的值
    var displayValue: Double {
        get {
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set {
            //double -> string
            display.text = "\(newValue)"
            userIsInTheMiddletofTypingANumbser = false
        }
    }
}

