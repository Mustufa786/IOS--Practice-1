//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherSearchField: UITextField!
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        weatherSearchField.delegate = self
    }


    @IBAction func searchPressed(_ sender: UIButton) {
        weatherSearchField.endEditing(true)
        print(weatherSearchField.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        weatherSearchField.endEditing(true)
        print(weatherSearchField.text!)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = weatherSearchField.text{
            weatherManager.fetchWeather(cityName: city)
        }
        weatherSearchField.text = ""
    }
}

