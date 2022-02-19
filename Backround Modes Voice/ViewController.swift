//
//  ViewController.swift
//  Backround Modes Voice
//
//  Created by Berat Yavuz on 19.02.2022.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
var sesOynatici = AVAudioPlayer()
    override func viewDidLoad() {
        do{
            let dosyaYolu = Bundle.main.path(forResource: "music", ofType:".mp3")
            
            sesOynatici = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: dosyaYolu!))
            sesOynatici.prepareToPlay()
        }catch{
            
            print(error.localizedDescription)
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func basla(_ sender: Any) {
        sesOynatici.play()
    }
    
    @IBAction func dur(_ sender: Any) {
        sesOynatici.stop()
    }
}

