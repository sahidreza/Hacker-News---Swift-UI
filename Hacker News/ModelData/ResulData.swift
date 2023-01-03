//
//  ResulData.swift
//  Hacker News
//
//  Created by Sahid Reza on 02/01/23.
//

import Foundation

struct ResultData:Codable{
    
    var hits:[PostData]
    
}

struct PostData:Codable,Identifiable{
    
    let title:String
    let url:String?
    let objectID:String
    let points:Int
    
    var id :String {
        return objectID
    }
    
 
    
}
