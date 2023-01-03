//
//  DetailedView.swift
//  Hacker News
//
//  Created by Sahid Reza on 02/01/23.
//

import SwiftUI
import WebKit

struct DetailedView: View {
    
    let url:String?
    
    var body: some View {
        
       WebView(urlString: url)
    }
}

struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(url: "https://www.google.com")
    }
}


