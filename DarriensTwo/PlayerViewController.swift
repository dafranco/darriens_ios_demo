//
//  PlayerController.swift
//  DarriensTwo
//
//  Created by David Imanol Franco on 19/3/17.
//  Copyright © 2017 David Imanol Franco. All rights reserved.
//

import Foundation



//
//  ViewController.swift
//  AVBasicPlayback
//
//  Created by David Imanol Franco on 12/3/17.
//  Copyright © 2017 David Imanol Franco. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import SpotX
import AdSupport

class PlayerViewController: UIViewController, SpotXAdDelegate {
    
    var adView: SpotXView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        SpotX.initialize(withApiKey: nil, category: "IAB1", section: "Fiction", domain: "com.spotxchange.demo", url: "https://itunes.apple.com/us/app/my_app/id123456789")
        SpotX.setDefaultChannelID("85394")
        
        let settings = SpotX.defaultSettings();
        settings?.useHTTPS = true;
        settings?.useNativeBrowser = true;
        settings?.endCardDuration = 1;
        
        adView = SpotXView(frame: self.view.bounds);
        adView.delegate = self;
        adView.startLoading()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func showAd(){
        self.adView.show();
    }
    
    
    //MARK: SpotXAdDelegate
    
    func present(_ viewControllerToPresent: UIViewController!)
    {
        self.present(viewControllerToPresent, animated: true, completion:nil);
    }
    
    public func adError(_ error: String!){
        self.dismiss(animated: true, completion: nil);
    }
    
    public func adLoaded() {
        self.showAd();
    }
    public func adFailedWithError(_ error: Error!){
        self.dismiss(animated: true, completion: nil);
    }
    
    func adCompleted(){
        self.dismiss(animated: true, completion: nil);
    }
    
    
}

