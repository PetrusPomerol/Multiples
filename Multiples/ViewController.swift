//
//  ViewController.swift
//  Multiples
//
//  Created by Phu Nguyen on 6/28/16.
//  Copyright © 2016 Phu Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Num: Int = 0
    var multiple:Int = 0
    let maxMul = 50

    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var whatMultipleAddTxt: UITextField!
    
    @IBOutlet weak var PressAddTxt: UILabel!
    
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var AddBtn: UIButton!
    
    @IBAction func addNumBtn(sender: UIButton) {
        let newSum = Num + multiple
        updateLbl(Num, mul:multiple, newSum:newSum)
        Num += multiple
        if isgameOver() {
            resetGame()
        }
    
        
        
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton) {
        
        
        if whatMultipleAddTxt.text != nil && whatMultipleAddTxt.text != "" {
            
            logoImg.hidden = true
            whatMultipleAddTxt.hidden = true
            playBtn.hidden = true
            
            PressAddTxt.hidden = false
            AddBtn.hidden = false
            
            multiple = Int(whatMultipleAddTxt.text!)!
            Num = 0
            resetLbl()
        }
        
    }
    func resetGame() {
        logoImg.hidden = false
        whatMultipleAddTxt.hidden = false
        playBtn.hidden = false
        PressAddTxt.hidden = true
        AddBtn.hidden = true
       resetLbl()
        
    }
    func resetLbl(){
         PressAddTxt.text = "Press Add to add"
    }
    func isgameOver()-> Bool{
        if Num >= maxMul {
            return true
        }
        else {
            return false
        }
    }
    func updateLbl(oldSum:Int, mul:Int, newSum:Int) {
        PressAddTxt.text = "\(oldSum) + \(mul) = \(newSum)"
}

}
