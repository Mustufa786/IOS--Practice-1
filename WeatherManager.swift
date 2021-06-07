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
        performTask(urlString: urlString)
        
    }
    
    func performTask(urlString : String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: responseCallback)
            
            task.resume()
            
        }
    }
    /**
     handling response from API
     */
    func responseCallback(data: Data?, response : URLResponse? , error : Error?){
        if error != nil {
            return
        }
        if let safeData = data{
            let stringData = String(data: safeData, encoding: .utf8)
            
        }
    }
    
    func parseJSON(data : Data){
       
        
    }
}
