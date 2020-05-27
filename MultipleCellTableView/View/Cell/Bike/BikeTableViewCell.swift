//
//  BikeTableViewCell.swift
//  MultipleCellTableView
//
//  Created by Fabrício Masiero on 27/05/20.
//  Copyright © 2020 Fabrício Masiero. All rights reserved.
//

import UIKit

class BikeTableViewCell: UITableViewCell {

    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var imageViewBike: UIImageView!
    @IBOutlet weak var labelModel: UILabel!
    @IBOutlet weak var labelManufacturer: UILabel!
    @IBOutlet weak var labelYear: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewBackground.layer.cornerRadius = 10.0
        viewBackground.layer.shadowRadius = 3.0
        viewBackground.layer.shadowColor = UIColor.black.cgColor
        viewBackground.layer.shadowOpacity = 0.5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    public func set(vehicle: Vehicle) {
        imageViewBike.image = UIImage(named: vehicle.imageName)
        labelModel.text = vehicle.model
        labelManufacturer.text = vehicle.manufacturer
        labelYear.text = String(vehicle.year)
    }
}
