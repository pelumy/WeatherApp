//
//  WeatherViewController.swift
//  Weather App
//
//  Created by mac on 13/09/2020.
//  Copyright © 2020 chavicodes. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
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

        // Do any additional setup after loading the view.
    }
    


}
