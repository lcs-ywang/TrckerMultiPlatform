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
                #if os(iOS)
                NavigationView {
                    WorldMap(store: testStore)
                }
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
                #else
                NavigationView{
                    WorldMap(store: testStore)
                        .frame(width: 400)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                #endif
                
                #if os(iOS)
                NavigationView{
                    TipsList()
                }
                .tabItem{
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
                #else
                TipsList()
                    .tabItem{
                        Image(systemName: "person.fill.questionmark")
                        Text("Tips")
                    }
                #endif
                
            }
            
        }
    }
}
