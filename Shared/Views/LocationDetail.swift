//
//  LoctaionDetails.swift
//  TrckerMultiPlatform
//
//  Created by Yining Wang on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
           
            HStack{
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
            }
           
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack{
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                Spacer()
                
            }
            .padding(.horizontal)
            
            Text(location.more)
                .padding([.horizontal,.bottom])
            
            if !location.advisory.isEmpty {
                
                Text(location.more)
                    .padding(.horizontal)
                
                HStack{
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.horizontal, .bottom])
            }else{
                Text(location.more)
                    .padding([.horizontal, .bottom])
            }
            
        }
        .navigationTitle(location.name)
        
        
        
    }
}

struct LoctaionDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            
            LocationDetail(location: testStore.places[1])
        }
    }
}
