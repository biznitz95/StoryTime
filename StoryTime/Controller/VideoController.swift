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

class VideoController: UIViewController {
    
    // MARK: Private Constants
    
    // MARK: Private Variables
    private var avPlayer = AVPlayer()
    private var controller = AVPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let path = Bundle.main.path(forResource: "The Cookie Theft Story Final Animation_4", ofType: ".mp4") else { fatalError("Failed to retrieve the video.") }
        
        let videoURL = URL(fileURLWithPath: path)
        
        avPlayer = AVPlayer(url: videoURL)
        controller.player = avPlayer
        
        view.addSubview(controller.view)
        controller.view.frame = self.view.bounds
        
        controller.showsPlaybackControls = false
        
        avPlayer.play()
    }
    
    // Lock Device in horizontal mode
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }

}
