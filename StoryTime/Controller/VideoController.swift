//
//  VideoController.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/28/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class VideoController: VideoView {
    
    
    var videoTitle: String?
    
    // MARK: Private Constants
    
    
    // MARK: Private Variables
    private var avPlayer = AVPlayer()
    private var controller = AVPlayerViewController()
    private var videoURL: URL?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let title = videoTitle, let path = Bundle.main.path(forResource: title, ofType: ".mp4") {
            videoURL = URL(fileURLWithPath: path)
        } else {
            guard let path = Bundle.main.path(forResource: "The Cookie Theft Story Final Animation_4", ofType: ".mp4") else { fatalError("Failed to retrieve the video.") }
            
            videoURL = URL(fileURLWithPath: path)
        }
        
        guard let url = videoURL else { fatalError("No URL Found") }
        
        avPlayer = AVPlayer(url: url)
        controller.player = avPlayer
        
        view.addSubview(controller.view)
        controller.view.frame = self.view.bounds
        
        controller.showsPlaybackControls = false
        
        avPlayer.play()
        
        // Check for tap and if video is playing
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped(gestureRecognizer:)))
        controller.view.addGestureRecognizer(tapRecognizer)
        tapRecognizer.delegate = self as? UIGestureRecognizerDelegate
        
    }
    
    @objc func tapped(gestureRecognizer: UITapGestureRecognizer) {
        if !avPlayer.isPlaying {
            self.dismiss(animated: true, completion: nil)
        }
    }
    

}
