//
//  BannerCell.swift
//  testApp
//
//  Created by Akarsh Ram on 08/08/23.
//

import UIKit

class BannerCell: UICollectionViewCell {
    @IBOutlet weak var bannerView: UIView!
    @IBOutlet weak var banerImage: UIImageView!
    
    override func awakeFromNib() {
        bannerView.layer.cornerRadius = 5
    }
}
