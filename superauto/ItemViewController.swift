//
//  ItemViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 29/11/2022.
//

import UIKit

var nameitems = ["Mac",
                 "iPad",
                 "iPhone",
                 "Watch",
                 "AirPods",
                 "TV & Nhà",
                 "Phụ kiện"
]

class ItemViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, tableViewNew {

    @IBOutlet weak var tableCate: UITableView!
    
    struct Items {
        let name: String
        let imageName: String
    }
    
    let data: [Items] = [
        Items(name: "Mac",          imageName: "Macbook Pro 14&16 Banner"),
        Items(name: "iPad",         imageName: "iPad Banner"),
        Items(name: "iPhone",       imageName: "Iphone 14 Pro Banner"),
        Items(name: "Watch",        imageName: "Watch Ultra Banner"),
        Items(name: "AirPods",      imageName: "AirPods Pro 2 Banner"),
        Items(name: "TV & Nhà",     imageName: "TVBanner"),
        Items(name: "Phụ kiện",     imageName: "accBanner")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        tableCate.dataSource = self
        tableCate.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = data[indexPath.row]
        let cell = tableCate.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemsTableViewCell
        cell.namesItems.text = items.name
        cell.cellDelegate = self
        cell.index = indexPath
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 292
    }
    func onClickCell(index: Int) {
        if index == 0 {
            nameTitle = "Tất cả sản phẩm \(nameitems[0])"
            let vc = storyboard?.instantiateViewController(withIdentifier: "products") as! ProductViewController
            present(vc, animated: true)
        } else if index == 1 {
            nameTitle = "Tất cả sản phẩm \(nameitems[1])"
            let vc = storyboard?.instantiateViewController(withIdentifier: "products") as! ProductViewController
            present(vc, animated: true)
        } else if index == 2 {
            nameTitle = "Tất cả sản phẩm \(nameitems[2])"
            let vc = storyboard?.instantiateViewController(withIdentifier: "products") as! ProductViewController
            present(vc, animated: true)
        } else if index == 3 {
            nameTitle = "Tất cả sản phẩm \(nameitems[3])"
            let vc = storyboard?.instantiateViewController(withIdentifier: "products") as! ProductViewController
            present(vc, animated: true)
        } else if index == 4 {
            nameTitle = "Tất cả sản phẩm \(nameitems[4])"
            let vc = storyboard?.instantiateViewController(withIdentifier: "products") as! ProductViewController
            present(vc, animated: true)
        } else if index == 5 {
            nameTitle = "Tất cả sản phẩm \(nameitems[5])"
            let vc = storyboard?.instantiateViewController(withIdentifier: "products") as! ProductViewController
            present(vc, animated: true)
        } else if index == 6 {
            nameTitle = "Tất cả sản phẩm \(nameitems[6])"
            let vc = storyboard?.instantiateViewController(withIdentifier: "products") as! ProductViewController
            present(vc, animated: true)
        }
    }

}
