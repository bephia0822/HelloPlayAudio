//
//  ViewController.swift
//  HelloPlayAudio
//
//  Created by Sophia Wang on 2021/3/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    @IBAction func play(_ sender: UIButton) {
        audioPlayer?.stop()   //停止之前的播放
        audioPlayer?.currentTime = 0.0     //將音檔的時間調到最開頭
        audioPlayer?.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //find sound path找出音檔的路徑
        if let path = Bundle.main.path(forResource: "Right", ofType: "mp3"){
            //path to URL
            let url = URL(fileURLWithPath: path)
            //make an audio player
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.enableRate = true
                //audioPlayer?.rate = 2.0 //調整播放速度（兩倍速）
                audioPlayer?.numberOfLoops = -1 //不停重複播放（只要負的就行）
                audioPlayer?.volume = 0.3  //小點聲
            }catch{
                print(error.localizedDescription)
            }
        }else{   //找不到音檔時
            print("no such file")
        }
        //一定可以找到以下的路徑不然就return跳出來
        guard let newPath = Bundle.main.path(forResource: "Right", ofType: "mp3") else {
            print("no such path")
            return
        }
    }


}


//下面整串為用guard寫的方式，要用時可整段複製
//override func viewDidLoad() {
  //  super.viewDidLoad()
    // Do any additional setup after loading the view.
    //find sound path找出音檔的路徑
//    guard let newPath = Bundle.main.path(forResource: "Right", ofType: "mp3") else {
//        print("no such path")
//        return
//    }
//    do {
//        audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: newPath))
//    }catch{
//        print(error.localizedDescription)
//    }
//}
