//
//  OverviewViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 29/11/2022.
//

import UIKit

var test: Int = 1
var ratio: Double!
class OverviewViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let rightButton = UIBarButtonItem(title: "Mua", style: .done, target: self, action: #selector(rightButtonPressed(_:)))
        self.navigationItem.rightBarButtonItems = [rightButton]
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Trở về", style: .done, target: self, action: nil)
        
        if test == 1 || test == 0{
            ratio = CGFloat((sizeImageOverview1[1] / sizeImageOverview1[0]))
            title = "Tổng quan \(fullName) \(chipM[0])"
        } else if test == 2 {
            ratio = CGFloat((sizeImageOverview2[1] / sizeImageOverview2[0]))
            title = "Tổng quan \(fullName) \(chipM[1])"
        } else if test == 3 {
            ratio = CGFloat((sizeImageOverview3[1] / sizeImageOverview3[0]))
            title = "Tổng quan \(fullName) \(chipM[2])"
        } else if test == 4 {
            ratio = CGFloat((sizeImageOverview4[1] / sizeImageOverview4[0]))
            title = "Tổng quan \(fullName) \(chipM[3])"
        } else if test == 5 {
            ratio = CGFloat((sizeImageOverview5[1] / sizeImageOverview5[0]))
            title = "Tổng quan \(fullName) \(chipM[4])"
        } else if test == 6 {
            ratio = CGFloat((sizeImageOverview6[1] / sizeImageOverview6[0]))
            title = "Tổng quan \(fullName) \(chipM[5])"
        }

        scrollView.contentSize = CGSize(width: view.bounds.width, height: view.bounds.width * CGFloat(ratio))
    }
        override func viewDidLayoutSubviews() {
            let view1 = UIView()
            if test == 1 {
                ratio = CGFloat((sizeImageOverview1[1] / sizeImageOverview1[0]))
            } else if test == 2 {
                ratio = CGFloat((sizeImageOverview2[1] / sizeImageOverview2[0]))
            } else if test == 3 {
                ratio = CGFloat((sizeImageOverview3[1] / sizeImageOverview3[0]))
            } else if test == 4 {
                ratio = CGFloat((sizeImageOverview4[1] / sizeImageOverview4[0]))
            } else if test == 5 {
                ratio = CGFloat((sizeImageOverview5[1] / sizeImageOverview5[0]))
            } else if test == 6 {
                ratio = CGFloat((sizeImageOverview6[1] / sizeImageOverview6[0]))
            }

            view1.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: ratio)
            view1.backgroundColor = .blue
            scrollView.addSubview(view1)
            
            let imageOver = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.width * CGFloat(ratio)))
            imageOver.backgroundColor = .brown
            imageOver.contentMode = .scaleAspectFit
            
            if test == 1 {
                imageOver.image = UIImage(named: imageOverview[0])
            } else if test == 2 {
                imageOver.image = UIImage(named: imageOverview[1])
            } else if test == 3 {
                imageOver.image = UIImage(named: imageOverview[2])
            } else if test == 4 {
                imageOver.image = UIImage(named: imageOverview[3])
            } else if test == 5 {
                imageOver.image = UIImage(named: imageOverview[4])
            } else if test == 6 {
                imageOver.image = UIImage(named: imageOverview[5])
            }
            
            view1.addSubview(imageOver)
        }
    @objc func rightButtonPressed(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "buy") as! BuyViewController
        navigationController?.show(vc, sender: nil)
    }


}

