//
//  SpecsViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 29/11/2022.
//

import UIKit

class SpecsViewController: UIViewController {


    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Trở về", style: .done, target: self, action: nil)
        
        if test == 1 {
            ratio = CGFloat((sizeImageSpecs1[1] / sizeImageSpecs1[0]))
            title = "Thông số kỹ thuật \(fullName) \(chipM[0])"
        } else if test == 2 {
            ratio = CGFloat((sizeImageSpecs2[1] / sizeImageSpecs2[0]))
            title = "Thông số kỹ thuật \(fullName) \(chipM[1])"
        } else if test == 3 {
            ratio = CGFloat((sizeImageSpecs3[1] / sizeImageSpecs3[0]))
            title = "Thông số kỹ thuật \(fullName) \(chipM[2])"
        } else if test == 4 {
            ratio = CGFloat((sizeImageSpecs4[1] / sizeImageSpecs4[0]))
            title = "Thông số kỹ thuật \(fullName) \(chipM[3])"
        } else if test == 5 {
            ratio = CGFloat((sizeImageSpecs5[1] / sizeImageSpecs5[0]))
            title = "Thông số kỹ thuật \(fullName) \(chipM[4])"
        } else if test == 6 {
            ratio = CGFloat((sizeImageSpecs6[1] / sizeImageSpecs6[0]))
            title = "Thông số kỹ thuật \(fullName) \(chipM[5])"
        }

        scrollView.contentSize = CGSize(width: view.bounds.width, height: view.bounds.width * CGFloat(ratio))
    }
        override func viewDidLayoutSubviews() {
            let view1 = UIView()
            if test == 1 {
                ratio = CGFloat((sizeImageSpecs1[1] / sizeImageSpecs1[0]))
                print((sizeImageOverview1[1] / sizeImageOverview1[0]))
            } else if test == 2 {
                ratio = CGFloat((sizeImageSpecs2[1] / sizeImageSpecs2[0]))
            } else if test == 3 {
                ratio = CGFloat((sizeImageSpecs3[1] / sizeImageSpecs3[0]))
            } else if test == 4 {
                ratio = CGFloat((sizeImageSpecs4[1] / sizeImageSpecs4[0]))
            } else if test == 5 {
                ratio = CGFloat((sizeImageSpecs5[1] / sizeImageSpecs5[0]))
            } else if test == 6 {
                ratio = CGFloat((sizeImageSpecs6[1] / sizeImageSpecs6[0]))
            }

            view1.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: ratio)
            view1.backgroundColor = .blue
            scrollView.addSubview(view1)
            
            let imageOver = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.width * CGFloat(ratio)))
            imageOver.backgroundColor = .brown
            imageOver.contentMode = .scaleAspectFit
            
            if test == 1 {
                imageOver.image = UIImage(named: imageSpecs[0])
            } else if test == 2 {
                imageOver.image = UIImage(named: imageSpecs[1])
            } else if test == 3 {
                imageOver.image = UIImage(named: imageSpecs[2])
            } else if test == 4 {
                imageOver.image = UIImage(named: imageSpecs[3])
            } else if test == 5 {
                imageOver.image = UIImage(named: imageSpecs[4])
            } else if test == 6 {
                imageOver.image = UIImage(named: imageSpecs[5])
            }
            
            view1.addSubview(imageOver)
        }
}
