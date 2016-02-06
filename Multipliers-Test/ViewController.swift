//
//  ViewController.swift
//  Multipliers-Test
//
//  Created by Chase Drum on 1/4/16.
//  Copyright © 2016 Chase Drum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    //Variables/Properties
    var maxMultiple = 0 //maxTaps
    var multiple = 0 //currentTaps
    
    @IBOutlet weak var logoImage:UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    
    //Outlets
    
    @IBOutlet weak var multipleTxt: UITextField!
    
    
    @IBOutlet weak var addBtn:UIButton!
    @IBOutlet weak var multipleLbl: UILabel!
    
    @IBAction func addBtn(sender: UIButton!) {
        multiple = multiple * multiple
       
        updateMultipleLbl()
        
        if isGameOver() {
            restartGame()
        }
    }

    @IBAction func playGameBtnPressed(sender:UIButton!) {
        
        if multipleTxt.text != nil && multipleTxt.text != ""{
            // != means not equal to, so were saying if someone has typed something in and its blank, lets not doing anything otherwise run the code
            logoImage.hidden = true
            multipleTxt.hidden = true
            playBtn.hidden = true
            
            addBtn.hidden = false
            multipleLbl.hidden = false
            
            
            maxMultiple = Int(multipleTxt.text!)!
            
            
            updateMultipleLbl()
        }
    }

    
    func restartGame() {
        maxMultiple = 0
        multipleTxt.text = ""
        multiple = 0
        
        logoImage.hidden = false
        multipleTxt.hidden = false
        playBtn.hidden = false
        
        addBtn.hidden = true
        multipleLbl.hidden = true
    }
    
    func isGameOver() -> Bool{
        if multiple >= maxMultiple {
            return true
        } else {
            return false
        }
    }
    
    
    func updateMultipleLbl() {
        multipleLbl.text = "\(multiple) Taps"
        //We wrote this function to repeat from writing the same code from running repeatedly and makes it easier for us to use one point to make all modification.
    }

    
}

