//
//  ExperienceViewController.swift
//  StoryTime
//
//  Created by Bizet Rodriguez-Velez on 5/29/19.
//  Copyright © 2019 Bizet Rodriguez-Velez. All rights reserved.
//

import UIKit

class ExperienceViewController: ExperienceView {

    // MARK: Private IBOutlets
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: Private Variables
    private var data: [String] = []
    private var videoTitle = ""
    
    // MARK: Private Constants
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stylize()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let videos = Bundle.main.paths(forResourcesOfType: "mp4", inDirectory: nil, forLocalization: nil)
        
        for video in videos {
            guard let newVideo = video.split(separator: "/").last else { return }
            guard let newTitle = newVideo.split(separator: ".").first else { return }
            data.append(String(newTitle))
        }
        
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableExperienceCell") as! CustomeTableViewCell
        
        let text = data[indexPath.row]
        
        cell.label.text = text
        
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        
        return cell 
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        videoTitle = data[indexPath.row]
        
        performSegue(withIdentifier: "goToVideoFromExperience", sender: nil)
    }
    
    // MARK: Overrides
    
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
    
    // MARK: Gesture Functions
    func addSwipe() {
        let directions: [UISwipeGestureRecognizer.Direction] = [.right, .left, .up, .down]
        for direction in directions {
            let gesture = UISwipeGestureRecognizer(target: self, action: Selector(("handleSwipe:")))
            gesture.direction = direction
            self.view.addGestureRecognizer(gesture)
        }
    }
    
    func handleSwipe(sender: UISwipeGestureRecognizer) {
        print(sender.direction)
    }
    
    // MARK: Style Function
    func stylize() {
        titleLabel.stylizeLabel()
        tableView.stylizeTableView()
    }
    
    // MARK: IBActions
    
}
