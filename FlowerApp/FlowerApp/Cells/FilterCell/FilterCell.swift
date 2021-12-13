//
//  FilterCell.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 13.12.21.
//

import UIKit

class FilterCell: UITableViewCell {
    @IBOutlet weak var cellBackgroundView: UIView!
    @IBOutlet weak var compositionLabel: UILabel!
    @IBOutlet weak var checkboxButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellBackgroundView.addShadowAndCornerRadius()
    }
    
    func setupCell(composition: String) {
        compositionLabel.text = composition
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
