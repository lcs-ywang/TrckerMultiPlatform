//
//  TrckerMultiPlatformApp.swift
//  Shared
//
//  Created by Yining Wang on 2022-01-18.
//

import SwiftUI

@main
struct TrckerMultiPlatformApp: App {
    var body: some Scene {
        WindowGroup {
            LocationDetail(location: Location.example)
        }
    }
}
