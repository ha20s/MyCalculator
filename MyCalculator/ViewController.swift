//
//  ViewController.swift
//  MyCalculator
//
//  Created by H . on 03/05/1444 AH.
//

import UIKit

class ViewController: UIViewController {
//vars
   var displayedNum : Double = 0
   var lastNum : Double = 0
   var performingMath : Bool = false
   var operation = 0
   var percent : Double = 0.01

    

// outelts
    @IBOutlet weak var displaylbl: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            displaylbl.text = String(sender.tag - 1 )
            displayedNum = Double(String(displaylbl.text!))!
            performingMath = false
        } else {
            displaylbl.text = displaylbl.text! + String(sender.tag - 1 )
            displayedNum = Double(displaylbl.text!)!
        }
    }
    
    @IBAction func operations(_ sender: UIButton) {
        if displaylbl.text != "" && sender.tag != 11 && sender.tag != 16{

            lastNum = Double(displaylbl.text!)!

        if sender.tag == 12 { //Divide

            displaylbl.text = "/";

        }

        if sender.tag == 13 { //Multiply

            displaylbl.text = "x";

        }

        if sender.tag == 14 { //Subtract

            displaylbl.text = "-";

        }

        if sender.tag == 15 { //Add

            displaylbl.text = "+";

        }

        operation = sender.tag

        performingMath = true;

        }

        else if sender.tag == 16 {

        if operation == 12{ //Divide

            displaylbl.text = String(lastNum / displayedNum)

        }

        else if operation == 13{ //Multiply

            displaylbl.text = String(lastNum * displayedNum)

        }

        else if operation == 14{ //Subtract

            displaylbl.text = String(lastNum - displayedNum)

        }

        else if operation == 15{ //Add

            displaylbl.text = String(lastNum + displayedNum)

        }
        else if operation == 19{ //decimal
         

            displaylbl.text = String(Int(lastNum)) + String(".") + String(Int(displayedNum))

        }
            else if operation == 17{ //Minues

                displaylbl.text = String( -displayedNum)

            }
            
        else if operation == 18{ //percent
            
            displaylbl.text = String(Double(displayedNum) * percent)

            }


        }

        else if sender.tag == 11{

        displaylbl.text = ""

        lastNum = 0

        displayedNum = 0

        operation = 0

        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

/*
 
 try decimal
 if performingMath || displaylbl.text!.isEmpty
     {
     displaylbl.text = "0."
     performingMath = false
     }
     else
     {
         if !displaylbl.text!.contains(".") {
             displaylbl.text = displaylbl.text! + "."
         }
     }
 displayedNum = Double(displaylbl.text!)!
 
 */
