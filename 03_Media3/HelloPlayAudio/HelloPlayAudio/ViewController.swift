//
//  ViewController.swift
//  HelloPlayAudio
//
//  Created by appsgaga on 2017/10/24.
//  Copyright © 2017年 appsgaga. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func play(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //find sound path
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3"){
            //path to url
            let url = URL(fileURLWithPath: path)
            //make an audio player
            do{
               let audioPlayer = try AVAudioPlayer(contentsOf: url)
            }catch{
                
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

