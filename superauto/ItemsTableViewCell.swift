//
//  ItemsTableViewCell.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 06/12/2022.
//

import UIKit

protocol tableViewNew {
    
    func onClickCell(index: Int)
}

class ItemsTableViewCell: UITableViewCell {

    @IBOutlet weak var imageBanner: UICollectionView!
    @IBOutlet weak var namesItems: UILabel!
    @IBOutlet weak var showAll: UIButton!
    
    internal var cellDelegate: tableViewNew?
    internal var index: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        showAll.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func clickMe(_ sender: Any) {
        cellDelegate?.onClickCell(index: (index?.row)!)
    }

}
