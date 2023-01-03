//
//  WebView.swift
//  Hacker News
//
//  Created by Sahid Reza on 02/01/23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
 
    let urlString:String?
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        
        if let safeUrlString = urlString {
            
            if let url = URL(string: safeUrlString){
                let request = URLRequest(url: url)
                DispatchQueue.main.async {
                    
                    webView.load(request)
                }
               
            }
            
        }
        
    }
}
