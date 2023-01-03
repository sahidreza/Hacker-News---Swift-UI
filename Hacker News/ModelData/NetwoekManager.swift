//
//  NetwoekManager.swift
//  Hacker News
//
//  Created by Sahid Reza on 02/01/23.
//

import Foundation

class NetwoekManager:ObservableObject{
    
    @Published var postData = [PostData]()
    
    
    func dataFetch(){
        
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?query=foo&tags=story"){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { data, response, error in
                
                if error == nil {
                    
                    if let safeData = data {
                        let jsonDecoder = JSONDecoder()
                        
                        do{
                            let decodeData = try jsonDecoder.decode(ResultData.self, from: safeData)
                            
                            DispatchQueue.main.async {
                                
                                self.postData = decodeData.hits
                            }
                            
                          
                            
                        } catch{
                            print(error.localizedDescription,"ABu:")
                        }
                        
                    }
                    
                }
                
                
            }
            task.resume()
            
            
        }
        
        
    }
    
    
    
    
}
