//
//  ExperienceViewController.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/29/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: Private IBOutlets
    @IBOutlet private weak var tableView: UITableView!
    
    // MARK: Private Variables
    private var data: [String] = []
    private var videoTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.dataSource = self
        
        let videos = Bundle.main.paths(forResourcesOfType: "mp4", inDirectory: nil, forLocalization: nil)
        
        for video in videos {
            guard let newVideo = video.split(separator: "/").last else { return }
            guard let newTitle = newVideo.split(separator: ".").first else { return }
            data.append(String(newTitle))
        }
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableExperienceCell")!
        
        let text = data[indexPath.row]
        
        cell.textLabel?.text = text
        
        cell.selectionStyle = .none
        
        return cell 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        videoTitle = data[indexPath.row]
        
        performSegue(withIdentifier: "goToVideoFromExperience", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToVideoFromExperience" {
            if let nextViewController = segue.destination as? VideoController {
                nextViewController.videoTitle = videoTitle
            }
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    // MARK: IBActions
    
}
