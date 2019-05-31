//
//  AVPlayer+Functions.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/30/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit
import AVKit

extension AVPlayer {
    
    var isPlaying: Bool {
        return rate != 0 && error == nil
    }
}
