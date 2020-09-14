//
//  WeatherViewController.swift
//  Weather App
//
//  Created by mac on 13/09/2020.
//  Copyright © 2020 chavicodes. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var minimumTemperatureLabel: UILabel!
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    
    @IBOutlet weak var maximumTemperatureLabel: UILabel!
    
    
     
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as? WeatherTableViewCell {
            cell.weekdayLabel?.text = "Monday"
            cell.weatherImageLabel?.image = UIImage(named: "clear")
            cell.temperatureLabel?.text = "27" + " °"
            return cell
        }
        return UITableViewCell()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumTemperatureLabel?.text = "27" + " °"
        currentTemperatureLabel?.text = "29" + " °"
        maximumTemperatureLabel?.text = "35" + " °"

        // Do any additional setup after loading the view.
    }
    
    let url = "http://api.openweathermap.org/data/2.5/forecast?id=2352947&units=metric&cnt=5&appid=6b0fa21ca2058f8d13416fcd591bdf78"
    


}
