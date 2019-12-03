//
//  ViewController.swift
//  FontControll
//
//  Created by Md Sifat on 12/2/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentTime = Timer()
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var TextLbl: UILabel!
    @IBOutlet weak var Size: UILabel!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        currentTime = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateLabel) , userInfo: nil, repeats: true)
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @objc func updateLabel(){
        time.text = DateFormatter.localizedString(from: Date(), dateStyle: .short , timeStyle: .medium)
    }
    

 
    @IBAction func SliderControll(_ sender: Any) {
        
        self.TextLbl.font = UIFont.systemFont(ofSize: CGFloat(slider.value * 350.0))
        
        Size.text = "\(Int(slider.value * 350.0))"
    }
    
}

