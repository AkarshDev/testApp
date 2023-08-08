//
//  CategoryCell.swift
//  testApp
//
//  Created by Akarsh Ram on 08/08/23.
//

import UIKit

class CategoryCell: UICollectionViewCell {
    @IBOutlet weak var categoryView: UIView!
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        categoryView.layer.cornerRadius = categoryView.frame.width/2
    }
    
}
