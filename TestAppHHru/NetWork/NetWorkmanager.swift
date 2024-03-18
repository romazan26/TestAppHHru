//
//  NetWorkmanager.swift
//  TestAppHHru
//
//  Created by Роман on 14.03.2024.
//

import Foundation
import Alamofire

final class NetWorkManager {
    
    func fetchData(completion: @escaping(Welcome?) -> Void) {
        let url = "https://run.mocky.io/v3/ed41d10e-0c1f-4439-94fa-9702c9d95c14"
        
        AF.request(url, method: .get, encoding: URLEncoding.default, headers: nil).responseData { (dataResponse) in
            if let error = dataResponse.error {
                print("Error received requestiong data: \(error.localizedDescription)")
                completion(nil)
                return
            }
            guard let data = dataResponse.data else { return }
            
            let decoder = JSONDecoder()
            do {
                let objects = try decoder.decode(Welcome.self, from: data)
                completion(objects)
            } catch let jsonError {
                print("Failed to decode JSON", jsonError)
                completion(nil)
            }
        }
    }
    
}
