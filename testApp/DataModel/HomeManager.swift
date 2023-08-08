//
//  HomeManager.swift
//  testApp
//
//  Created by Akarsh Ram on 08/08/23.
//


import Foundation

protocol HomeManagerDelegate {
    func didUpdateHome(_ homeManager: HomeManager, home: [HomeDatum])
    func didFailWithError(error: Error)
}


struct HomeManager{
    var delegate: HomeManagerDelegate?

    func apiCallForHomeList(){
        if let url = URL(string: Constant.shared.baseUrl) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil{
                    print(error as Any)
                    return
                }
                    if let safeData = data {
                        if let homeDetails = self.parseJSON(homeData: safeData) {
                            self.delegate?.didUpdateHome(self, home: homeDetails.homeData)
                        }
                    }

            }
            task.resume()
        }
    }

    func parseJSON(homeData:Data) -> Homemodel?{
        let decoder = JSONDecoder()
        do {
          let decodedData = try decoder.decode(Homemodel.self, from: homeData)
            return decodedData
            
        } catch  {
            print("erros \(error)")
            return nil
        }
        
    }
}

