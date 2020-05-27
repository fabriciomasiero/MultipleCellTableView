//
//  ViewController.swift
//  MultipleCellTableView
//
//  Created by Fabrício Masiero on 26/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var vehicles: [Vehicle] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        registerCell()
        setVehicles()
    }
    private func setVehicles() {
        vehicles = [
            Vehicle(manufacturer: "Jeep", model: "Willys", type: .car, year: 1970, imageName: "jeep-willys"),
            Vehicle(manufacturer: "Harley Davidson", model: "Iron 883", type: .moto, year: 2018, imageName: "harley-davidson-iron883"),
            Vehicle(manufacturer: "Bianchi", model: "Super Pista", type: .bike, year: 2015, imageName: "bianchi-super-pista"),
            Vehicle(manufacturer: "Land-Rover", model: "Defender 90", type: .car, year: 1999, imageName: "land-rover-defender90")
        ]
        tableView.reloadData()
    }
    
    private func registerCell() {
        let carCell = UINib(nibName: "CarTableViewCell", bundle: Bundle.main)
        let motoCell = UINib(nibName: "MotoTableViewCell", bundle: Bundle.main)
        let bikeCell = UINib(nibName: "BikeTableViewCell", bundle: Bundle.main)
        
        tableView.register(carCell, forCellReuseIdentifier: "carCell")
        tableView.register(motoCell, forCellReuseIdentifier: "motoCell")
        tableView.register(bikeCell, forCellReuseIdentifier: "bikeCell")
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let vehicle = vehicles[indexPath.row]
        switch vehicle.type {
        case .bike:
            return 180
        case .moto:
            return 120
        default:
            return 243
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vehicles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vehicle = vehicles[indexPath.row]
        switch vehicle.type {
        case .bike:
            let cell = tableView.dequeueReusableCell(withIdentifier: "bikeCell") as! BikeTableViewCell
            cell.set(vehicle: vehicle)
            return cell
        case .moto:
            let cell = tableView.dequeueReusableCell(withIdentifier: "motoCell") as! MotoTableViewCell
            cell.set(vehicle: vehicle)
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "carCell") as! CarTableViewCell
            cell.set(vehicle: vehicle)
            return cell
        }
    }
}
