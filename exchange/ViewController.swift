//
//  ViewController.swift
//  exchange
//
//  Created by 7 on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var thousandsLabel: UILabel!
    @IBOutlet weak var fivehundredLabel: UILabel!
    @IBOutlet weak var hundredsLabel: UILabel!
    @IBOutlet weak var fiftyLabel: UILabel!
    @IBOutlet weak var tensLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var onesLabel: UILabel!
    
    @IBOutlet weak var moneyTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        thousandsLabel.text = ""
        fivehundredLabel.text = ""
        hundredsLabel.text = ""
        fiftyLabel.text = ""
        tensLabel.text = ""
        fiveLabel.text = ""
        onesLabel.text = ""
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func Run(_ sender: Any) {
        
        let money = moneyTextField.text!
        var moneyNum = Int(money)
        
        var thousands: Int?
        var fivehundred: Int?
        var onehundreds: Int?
        var fifty: Int?
        var tens: Int?
        var five: Int?
        var ones: Int?


        
        // 如果總額超過四位數
        if moneyNum! / 1000 != 0 {
            
            thousands = moneyNum! / 1000
            moneyNum! = moneyNum! - 1000 * thousands!
            
            if moneyNum! / 500 == 1 {
                fivehundred = 1
                moneyNum! = moneyNum! - 500
                onehundreds = moneyNum! / 100
                moneyNum! = moneyNum! - 100 * onehundreds!
            } else {
                onehundreds = moneyNum! / 100
                moneyNum! = moneyNum! - 100 * onehundreds!
            }
            
            if moneyNum! / 50 == 1 {
                fifty = 1
                moneyNum! = moneyNum! - 50
                tens = moneyNum! / 10
                moneyNum! = moneyNum! - 10 * tens!
            } else {
                tens = moneyNum! / 10
                moneyNum! = moneyNum! - 10 * tens!
            }
            
            if moneyNum! / 5 == 1 {
                five = 1
                ones = moneyNum! - 5
            } else {
                ones = moneyNum!
            }
        }
        
        // 如果總額超過三位數，不滿四位數
        else if moneyNum! / 100 != 0 {
  
            if moneyNum! / 500 == 1 {
                fivehundred = 1
                moneyNum! = moneyNum! - 500
                onehundreds = moneyNum! / 100
                moneyNum! = moneyNum! - 100 * onehundreds!
            } else {
                onehundreds = moneyNum! / 100
                moneyNum! = moneyNum! - 100 * onehundreds!
            }
            
            if moneyNum! / 50 == 1 {
                fifty = 1
                moneyNum! = moneyNum! - 50
                tens = moneyNum! / 10
                moneyNum! = moneyNum! - 10 * tens!
            } else {
                tens = moneyNum! / 10
                moneyNum! = moneyNum! - 10 * tens!
            }
            
            if moneyNum! / 5 == 1 {
                five = 1
                ones = moneyNum! - 5
            } else {
                ones = moneyNum!
            }
            
        }
        
        // 如果總額超過兩位數，不滿三位數
        else if moneyNum! / 10 != 0 {
            
            if moneyNum! / 50 == 1 {
                
                fifty = 1
                moneyNum! = moneyNum! - 50
                tens = moneyNum! / 10
                moneyNum! = moneyNum! - 10 * tens!
            } else {
                tens = moneyNum! / 10
                moneyNum! = moneyNum! - 10 * tens!
            }
            
            if moneyNum! / 5 == 1 {
                five = 1
                ones = moneyNum! - 5
            } else {
                ones = moneyNum!
            }
        }
        
        // 如果總額是個位數
        else if moneyNum! / 1 != 0 {
 
            if moneyNum! / 5 == 1 {
                five = 1
                ones = moneyNum! - 5
            } else {
                ones = moneyNum!
            }
        }
        
        // 如果總額是0
        else {
        
        }
        
        if thousands != nil {
        thousandsLabel.text = "\(thousands!)"
        } else {
            thousandsLabel.text = "0"
        }
        if fivehundred != nil {
            fivehundredLabel.text = "\(fivehundred!)"
        } else {
            fivehundredLabel.text = "0"
        }
        if onehundreds != nil {
            hundredsLabel.text = "\(onehundreds!)"
        } else {
            hundredsLabel.text = "0"
        }
        if fifty != nil {
            fiftyLabel.text = "\(fifty!)"
        } else {
            fiftyLabel.text = "0"
        }
        if tens != nil {
            tensLabel.text = "\(tens!)"
        } else {
            tensLabel.text = "0"
        }
        if five != nil {
            fiveLabel.text = "\(five!)"
        } else {
            fiveLabel.text = "0"
        }
        if ones != nil {
            onesLabel.text = "\(ones!)"
        } else {
            onesLabel.text = "0"
        }
    }

}
