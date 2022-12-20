//
//  ProductViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 06/12/2022.
//

import UIKit

var nameTitle: String = "1"

struct Items {
    let name: String
    let imageName: String
}
let dataAll: [Items] = [
    Items(name: "MacBook Air",                 imageName: "MacAirBanner"),
    Items(name: "MacBook Pro 13 inch",         imageName: "Macbook Pro 13 Banner"),
    Items(name: "MacBook Pro 14 inch",         imageName: "Macbook Pro 14&16 Banner"),
    Items(name: "MacBook Pro 16 inch",         imageName: "Macbook Pro 14&16 Banner"),
    Items(name: "Mac mini",                    imageName: "Mac mini banner"),
    Items(name: "iMac 24 inch",                imageName: "iMac 24 Banner"),
    Items(name: "Mac Studio",                  imageName: "MacStudioBanner")
]

class ProductViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, tableViewNew0 {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tableCate: UITableView!
    
    let data0 = dataAll
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "\(nameTitle)"
        
        tableCate.dataSource = self
        tableCate.delegate = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data0.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = data0[indexPath.row]
        let cell = tableCate.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ProductsTableViewCell
        cell.namesItems.text = items.name
        cell.imageBanner.image = UIImage(named: items.imageName)
        cell.cellDelegate = self
        cell.index = indexPath
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 292
    }

    func onClickCell1(index: Int) {
        if index == 0 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
            
            present(vc, animated: true)
        } else if index == 1 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 2 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 3 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 4 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 5 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 6 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 7 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 8 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        } else if index == 9 {
                let vc = storyboard?.instantiateViewController(withIdentifier: "compares") as! ItemsNavigationController
                present(vc, animated: true)
        }
    }
    
}
