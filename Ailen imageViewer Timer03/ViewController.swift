//
//  ViewController.swift
//  Ailen imageViewer Timer03
//
//  Created by D7703_16 on 2019. 3. 28..
//  Copyright © 2019년 201526109. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienimageView: UIImageView!
    @IBOutlet weak var counterLabel: UILabel!
    var count = 1
    //Timer 객체 생성
    var myTimer = Timer()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienimageView.image = UIImage(named: "image\(count)")
        counterLabel.text = String(count)
    }

    @IBAction func playbtn(_ sender: Any) {
        print("playbtnPressed")
        
        //Timer 작동
        
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func pausebtn(_ sender: Any) {
        print("pausebtnPressed")
        myTimer.invalidate()
        
    }
    
    @IBAction func stopbtn(_ sender: Any) {
        print("stopbtnPressed")
        myTimer.invalidate()
        count = 0
    }
    
    @objc func doAnimation(){
        
        if count == 5 {
            count = 0
        }
        count += 1
        
        alienimageView.image = UIImage(named: "image\(count)")
        counterLabel.text = String(count)
    }
    
}

