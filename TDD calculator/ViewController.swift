//
//  ViewController.swift
//  TDD calculator
//
//  Created by Dhrubojyoti on 22/03/20.
//  Copyright © 2020 Dhrubojyoti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLable:UILabel!
    var result:String!
    var operrationTag:Int!
    var firstvalue:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.setup()
    }
    
    @IBAction func actionPressed(_ sender:UIButton){
        self.resultLable.text = result + String(sender.tag)
        self.result = self.resultLable.text!
    }
    @IBAction func operrationPressed(_ sender:UIButton){
        guard (result != "") else {
            return
        }
        if operrationTag == nil{
            self.firstvalue = Int(self.resultLable.text!)
        }
        result = ""
        self.operrationTag = sender.tag
        if sender.tag == -1{
            //clear all
            firstvalue = 0
            self.resultLable.text = "0"
            self.operrationTag = nil
        }
    }
    
    @IBAction func equalButtonPressed(_ sender:UIButton){
        guard (result != "") else {
            return
        }
        let secondNumber = Int(result)!
        if operrationTag == 1{
            //add
            self.result = String(calculate().addNumber(X: self.firstvalue, Y: secondNumber))
        }else if operrationTag == 0{
            //sub
            self.result = String(calculate().subNumber(X: self.firstvalue, Y: secondNumber))
        }
        self.resultLable.text = self.result
        self.firstvalue = Int(result)
    }
}

extension ViewController{
    //All private function
    private func setup(){
        self.firstvalue = 0
        self.result = ""
    }
}

