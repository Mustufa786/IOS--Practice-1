//
//  WeatherManager.swift
//  Clima
//
//  Created by Mustufa Ansari on 06/06/2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    var apiUrl = "https://api.openweathermap.org/data/2.5/weather?appid=89c7a0dfc9979c732d0057ca88077f98&units=metric&q="
    
    
    func fetchWeather(cityName: String){
        let urlString = "\(apiUrl)\(cityName)"
        print(urlString)
    }
    
    func performTask(urlString : String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: responseCallback)
            
            task.resume()
            
        }
    }
    func responseCallback(data: Data?, response : URLResponse? , error : Error?){
        
    }
}
