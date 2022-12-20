//
//  ProductsTableViewCell.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 06/12/2022.
//

import UIKit

protocol tableViewNew0 {
    
    func onClickCell1(index: Int)
}


class ProductsTableViewCell: UITableViewCell {

    @IBOutlet weak var imageBanner: UIImageView!
    @IBOutlet weak var namesItems: UILabel!
    @IBOutlet weak var showAll: UIButton!
    
    internal var cellDelegate: tableViewNew0?
    internal var index: IndexPath?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        showAll.layer.cornerRadius = 17
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func clickMe(_ sender: Any) {
        cellDelegate?.onClickCell1(index: (index?.row)!)
    }
    
}
