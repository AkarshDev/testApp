//
//  ItemCell.swift
//  testApp
//
//  Created by Akarsh Ram on 08/08/23.
//

import UIKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var itemView: UIView!
    @IBOutlet weak var favOutet: UIButton!
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var offerLabel: UILabel!
    @IBOutlet weak var oldPrice: UILabel!
    @IBOutlet weak var offerPrice: UILabel!
    @IBOutlet weak var addOutlet: UIButton!
    @IBOutlet weak var expressIcon: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var offerView: UIView!

    override func awakeFromNib() {
        itemView.layer.cornerRadius = 5
        itemView.layer.borderWidth = 1.0
        itemView.layer.borderColor = (UIColor.lightGray).cgColor
        addOutlet.layer.cornerRadius = 10.0
        
    }
    
}
