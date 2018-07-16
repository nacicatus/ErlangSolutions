//
//  ErlangPreferences.swift
//  ErlangSolutions
//
//  Created by Sauron on 12/07/18.
//  Copyright © 2018 Sauron. All rights reserved.
//

import Cocoa

class ErlangPreferences: NSViewController {
    
    
    
    @IBOutlet weak var esl: NSImageView!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
}

extension ErlangPreferences {
    static func freshController() -> ErlangPreferences {
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        guard let viewController = storyboard.instantiateController(withIdentifier: "ErlangPreferences") as? ErlangPreferences else {
            fatalError("Check Main Storyboard")
        }
        return viewController
    }
}
