//
//  ViewController.swift
//  BirthdayNote
//
//  Created by Özgür Salih Dülger on 21.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var girilenTarih: UITextField!
    
    
    @IBOutlet weak var yazilanPlan: UITextField!
    
    @IBOutlet weak var sonucTarih: UILabel!
    
    @IBOutlet weak var sonucPlan: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let kaydedilenTarih = UserDefaults.standard.object(forKey: "tarih")
        let kaydedilenPlan = UserDefaults.standard.object(forKey: "plan")
        
        if let tarihim = kaydedilenTarih as? String{
            sonucTarih.text = tarihim
        }
        
        if let planim = kaydedilenPlan as? String{
            sonucPlan.text = planim
        }
        
        
        
        
        
    }

    @IBAction func buton(_ sender: Any) {
        
        
        UserDefaults.standard.set(girilenTarih, forKey: "tarih")
        UserDefaults.standard.set(yazilanPlan, forKey: "plan")
        
        sonucTarih.text = "Tarih: \(girilenTarih.text!)"
        sonucPlan.text = "Plan: \(yazilanPlan.text!)"
    }
    
}

