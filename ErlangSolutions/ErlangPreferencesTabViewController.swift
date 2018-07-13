//
//  ErlangPreferencesTabViewController.swift
//  ErlangSolutions
//
//  Created by Sauron on 12/07/18.
//  Copyright © 2018 Sauron. All rights reserved.
//

import Cocoa

class ErlangPreferencesTabViewController: NSTabViewController {
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
}

extension ErlangPreferencesTabViewController {
    static func freshController() -> ErlangPreferencesTabViewController {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateController(withIdentifier: "ErlangPreferencesTabViewController") as? ErlangPreferencesTabViewController else {
            fatalError("Check Main Storyboard")
        }
        return viewController
    }
}
