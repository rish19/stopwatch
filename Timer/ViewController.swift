//
//  ViewController.swift
//  Timer
//
//  Created by Rishabh Bhandari on 30/05/19.
//  Copyright © 2019 Rishabh Bhandari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = 0
    
    var timer = Timer()
    
    var timerState:Bool = false
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBAction func startTimer(_ sender: Any) {
        
        if !timerState {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
            timerState = true
            
        }
    }
    
    @IBAction func stopTimer(_ sender: Any) {
        timer.invalidate()
        timerState = false
    }
    
    
    @IBAction func restartTimer(_ sender: Any) {
        
        //timer.invalidate()
        time = 0
        timeLabel.text = String(time)
        
    }
    
    @objc func action () {
        
        time += 1
        timeLabel.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

