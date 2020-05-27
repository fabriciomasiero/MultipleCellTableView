//
//  CarTableViewCell.swift
//  MultipleCellTableView
//
//  Created by Fabrício Masiero on 27/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageViewCar: UIImageView!
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var labelManufacturer: UILabel!
    @IBOutlet weak var labelYear: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func set(vehicle: Vehicle) {
        imageViewCar.image = UIImage(named: vehicle.imageName)
        labelModel.text = vehicle.model
        labelManufacturer.text = vehicle.manufacturer
        labelYear.text = String(vehicle.year)
    }
}
