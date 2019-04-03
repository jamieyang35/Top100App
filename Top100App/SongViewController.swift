//
//  SongViewController.swift
//  Top100App
//
//  Created by stoller on 2019/4/2.
//  Copyright © 2019年 stoller. All rights reserved.
//

import UIKit
import AVFoundation

class SongViewController: UIViewController, AVSpeechSynthesizerDelegate{

    var song: Song?
    
    @IBOutlet weak var singerImage: UIImageView!
    @IBOutlet weak var lyricsLabel: UILabel!
    
    let synthesizer = AVSpeechSynthesizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let song = song {
            singerImage.image = UIImage(named: song.image)
            lyricsLabel.text = song.Youtubor
        
            synthesizer.delegate = self
            // Do any additional setup after loading the view.
    }
    }
    
    
    @IBAction func speak(_ sender: Any) {
        
        let utterance = AVSpeechUtterance(string: lyricsLabel.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        utterance.rate = 0.6
        synthesizer.speak(utterance)
        lyricsLabel.text = utterance.speechString
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
