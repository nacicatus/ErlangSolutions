//
//  EventMonitor.swift
//  ErlangSolutions
//
//  Created by Sauron on 12/07/18.
//  Copyright © 2018 Sauron. All rights reserved.
//

import Cocoa

public class EventMonitor {
    fileprivate var monitor: Any?
    fileprivate let mask: NSEventMask
    fileprivate let handler: (NSEvent) -> Void
    
    public init(mask: NSEventMask, handler: @escaping (NSEvent?) -> Void) {
        self.mask = mask
        self.handler = handler
    }
    
    deinit {
        stop()
    }
    
    public func start() {
        monitor = NSEvent.addGlobalMonitorForEvents(matching: mask, handler: handler)
    }
    
    public func stop() {
        if monitor != nil {
            NSEvent.removeMonitor(monitor!)
            monitor = nil
        }
    }
}
