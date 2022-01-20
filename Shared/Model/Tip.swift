//
//  Tip.swift
//  TrckerMultiPlatform
//
//  Created by Yining Wang on 2022-01-19.
//

import Foundation

struct Tip: Decodable {
    
    let text: String
    let children: [Tip]?
}
