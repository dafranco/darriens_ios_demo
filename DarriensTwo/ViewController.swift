//
//  ViewController.swift
//  DarriensTwo
//
//  Created by David Imanol Franco on 27/2/17.
//  Copyright © 2017 David Imanol Franco. All rights reserved.
//

import UIKit
import AdSupport
import SpotX

class ViewController: UIViewController {
    
    var verticalGradient: CAGradientLayer!
    var horizontalGradient: CAGradientLayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let logo = UIImage(named: "Logo")
        let logoView = UIImageView(image:logo)
        self.navigationItem.titleView = logoView
        */
        verticalGradient = CAGradientLayer()
        
        verticalGradient.frame = self.view.bounds
        verticalGradient.colors = [
            UIColor(red:0.13, green:0.44, blue:0.64, alpha:1.0).cgColor,
            UIColor(red:0.15, green:0.54, blue:0.75, alpha:1.0).cgColor,
            UIColor(red:0.15, green:0.54, blue:0.75, alpha:1.0).cgColor,
            UIColor(red:0.04, green:0.22, blue:0.38, alpha:1.0).cgColor
        ]
        verticalGradient.locations = [0, 0.37, 0.62, 1.0]
        
        self.view.layer.insertSublayer(verticalGradient, at: 0)
        
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        self.verticalGradient.frame = self.view.bounds;
        self.verticalGradient.frame = CGRect(origin: self.verticalGradient.startPoint,size:size)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func createGradient(){
        
    }
    
    @IBAction func playVideo(_ sender: Any) {
        let videoController = PlayerViewController()
        
        present(videoController, animated:true)
        
    }

}

