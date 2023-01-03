//
//  ContentView.swift
//  Hacker News
//
//  Created by Sahid Reza on 02/01/23.
//

import SwiftUI

struct ContentView: View {
    
 @ObservedObject var networkManager = NetwoekManager()
  
    
    var body: some View {
        NavigationView{
            
            List(networkManager.postData){ (postData) in
            
                NavigationLink(destination: DetailedView(url: postData.url)) {
                    HStack {
                        Text(String(postData.points))
                        Text(postData.title)

                    }
                }
              
            }
                
                .navigationTitle("Hacker News")
        }.onAppear {
            networkManager.dataFetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
