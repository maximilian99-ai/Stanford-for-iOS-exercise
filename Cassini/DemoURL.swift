//
//  DemoURL.swift
//  Cassini
//
//  Created by Max's MacBook Pro on 2022/04/17.
//

import Foundation

struct DemoURL {
    static let Stanford = "http://comm.stanford.edu/wp-content/uploads/2013/01/stanford-campus.png"
    
    static let NASA = [
        "Cassini" : "http://jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
        "Earth" : "http://nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
        "Saturn": "http://nasa.gov/sites/default/files/saturn_collage.jpg"
    ]
    
    static func NASAImageNamed(imageName: String?) -> NSURL? {
        if let urlstring = NASA[imageName ?? "" ] {
            return NSURL(string: urlstring)
        } else {
            return nil
        }
    }
}
