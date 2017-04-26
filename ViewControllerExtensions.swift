//
//  ViewControllerExtensions.swift
//  AVPlayer
//
//  Created by Vedran on 24/04/2017.
//  Copyright © 2017 Vedran. All rights reserved.
//

import UIKit


extension ViewController{
    
    func onStartSetup() {
//        playButton .setTitle("", for: UIControlState.normal)
        playButton.setAttributedTitle(NSAttributedString.init(string: "PLAY", attributes: [NSForegroundColorAttributeName:blueColor]),
                                      for: UIControlState.normal)
        playButton.setAttributedTitle(NSAttributedString.init(string: "PAUSE", attributes: [NSForegroundColorAttributeName:whiteColor]),
                                      for: UIControlState.selected)
    }
    
    func layoutCustomLayers(){
        playButtonContainer.layer.cornerRadius = playButtonContainer.frame.size.height / 2
        playButtonContainer.layer.borderColor = blueColor.cgColor
    }
    
    func handleButtonSelected() {
        playButton.isSelected = !playButton.isSelected
        playButtonContainer.backgroundColor = playButton.isSelected ? blueColor : whiteColor
        
        toggleUserInteraction(enable: false)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.toggleUserInteraction(enable: true)
        }
    }

    func toggleUserInteraction(enable:Bool) {
        if(enable){
            UIApplication.shared.endIgnoringInteractionEvents()
        }else{
            UIApplication.shared.beginIgnoringInteractionEvents()

        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    
}



