//
//  TrckerMultiPlatformApp.swift
//  Shared
//
//  Created by Yining Wang on 2022-01-18.
//

import SwiftUI

@main
struct TrckerMultiPlatformApp: App {
    
    @StateObject var store =  LocationStore()
    
    
    
    var body: some Scene {
        WindowGroup {
            
            
            TabView {
                
                NavigationView{
                LocationList(store: testStore)
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                NavigationView{
                    WorldMap()
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    TipsList()
                        .tabItem{
                            Image(systemName: "person.fill.question")
                            Text("Tips")
                        }
                }
            }
            
            
            
        }
    }
}
