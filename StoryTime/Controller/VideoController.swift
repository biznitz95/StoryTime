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
    
    // MARK: Private Constants
    
    
    // MARK: Private Variablesgit 
    private var avPlayer = AVPlayer()
    private var controller = AVPlayerViewController()
    private var videoURL: URL?
    
    // MARK: Public Variables
    public var videoTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up video
        setUpVideo()
        
        // Check for tap and if video is playing
       setUpGesture()
        
    }
    
    // MARK: Functions
    
    func setUpVideo() {
        guard let title = videoTitle,
            let path = Bundle.main.path(forResource: title, ofType: ".mp4") else { return }
        
        videoURL = URL(fileURLWithPath: path)
        
        guard let url = videoURL else { fatalError("No URL Found") }
        
        avPlayer = AVPlayer(url: url)
        controller.player = avPlayer
        
        view.addSubview(controller.view)
        controller.view.frame = self.view.bounds
        
        controller.showsPlaybackControls = false
        
        avPlayer.play()
    }
    
    func setUpGesture() {
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped(gestureRecognizer:)))
        controller.view.addGestureRecognizer(tapRecognizer)
        tapRecognizer.delegate = self as? UIGestureRecognizerDelegate
        
        let rotate = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(sender:)))
        view.addGestureRecognizer(rotate)
    }
    
    @objc func handleRotation(sender: UIRotationGestureRecognizer){
        guard sender.view != nil else { return }
        
        if sender.state == .began || sender.state == .changed {
            if sender.rotation <= -1.57 {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @objc func tapped(gestureRecognizer: UITapGestureRecognizer) {
        if !avPlayer.isPlaying {
            self.dismiss(animated: true, completion: nil)
        }
    }
    

}
