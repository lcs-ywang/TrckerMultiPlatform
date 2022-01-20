//
//  LocationStore.swift
//  TrckerMultiPlatform
//
//  Created by Yining Wang on 2022-01-19.
//

import Foundation

class LocationStore: ObservableObject{
   
    var places: [Location]
   
    init() {
        
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        places.sort(by: { (oneLocation, anotherLocation) in
            oneLocation.name > anotherLocation.name
        })
                      
    }
    
}


var testStore = LocationStore()
