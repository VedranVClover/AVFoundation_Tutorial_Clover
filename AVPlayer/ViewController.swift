//
//  ViewController.swift
//  AVPlayer
//
//  Created by Vedran on 24/04/2017.
//  Copyright © 2017 Vedran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playerHolder: UIView!
    @IBOutlet weak var playButtonContainer: UIView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var timeSlider: UISlider!
    
    var sliderIsMoving = false
    var timer:Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onStartSetup()

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.layoutCustomLayers()
        
    }
    
    @IBAction func sliderEditingStarted(_ sender: Any) {
        sliderIsMoving = true
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        sliderIsMoving = false
        
    }
    
    @IBAction func playPause(_ sender: Any) {
        handleButtonSelected()
        
    }
    
    
    let blueColor = UIColor(colorLiteralRed: 2.0 / 225.0,
                            green: 136 / 225.0,
                            blue: 209 / 225.0, alpha: 1.0)
    let whiteColor = UIColor.white
    let url = URL.init(string: "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4")!
    
}

