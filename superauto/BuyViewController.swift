//
//  BuyViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 29/11/2022.
//

import UIKit
import Cosmos
import TinyConstraints

var imageProducts = [String]()

var tutorial0 = ["", "", "", "", "", ""]

var items1 = [String]()
var items2 = [String]()
var items3 = [String]()
var items4 = [String]()
var items5 = [String]()
var items6 = [String]()

var cost1 = [Double]()
var cost2 = [Double]()
var cost3 = [Double]()
var cost4 = [Double]()
var cost5 = [Double]()
var cost6 = [Double]()

var costA: Double = 0.0
var costB: Double = 0.0
var costC: Double = 0.0
var costD: Double = 0.0
var costE: Double = 0.0
var costF: Double = 0.0

var testA = 0
var testB = 0
var testC = 0
var testD = 0
var testE = 0
var testF = 0

var rollPerColor = 0
var rollPerAllImage = 0

var nameOP1 = ""
var nameOP2 = ""
var nameOP3 = ""
var nameOP4 = ""
var nameOP5 = ""
var nameOP6 = ""

var heightLBSM_range = [50, 12]

class BuyViewController: UIViewController {
    
    @IBOutlet weak var scrollProduct: UIScrollView!
    @IBOutlet weak var imageProduct: UICollectionView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var nameLB: UILabel!
    @IBOutlet weak var nameLB1: UILabel!
    @IBOutlet weak var viewRating: CosmosView!
    @IBOutlet weak var viewAllRating: UIButton!
    @IBOutlet weak var statusProduct: UILabel!
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var addToBag: UIButton!
    @IBOutlet weak var buyNow: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBuyViewController()
        setupRating()
        setupBuyNowAndAddToBag()
           
        if test == 1 {
            statusProduct.text = statusProducts[0]
            price.text = "\(cost[0])00.000Vnđ"
            imageProducts = imageProducts1
            rollPerColor = numberImagePerColor[0]
            rollPerAllImage = numberImageAllColor[0]
            tutorial0 = tutorial1
            if colorName1.isEmpty == false {
                items1 = colorName1
                cost1 = costOption1
                setupSegment1() } else { testA = 7 }
            if capacityRAM1.isEmpty == false {
                items2 = capacityRAM1
                cost2 = costRAM1
                setupSegment2() } else { testB = 7 }
            if capacityROM1.isEmpty == false {
                items3 = capacityROM1
                cost3 = costROM1
                setupSegment3() } else { testC = 7 }
            if option11.isEmpty == false {
                items4 = option11
                cost4 = costOption11
                setupSegment4() } else { testD = 7 }
            if option21.isEmpty == false {
                items5 = option21
                cost5 = costOption21
                setupSegment5() } else { testE = 7 }
            if option31.isEmpty == false {
                items6 = option31
                cost6 = costOption31
                setupSegment6() } else { testF = 7 }
        } else if test == 2 {
            rollPerColor = numberImagePerColor[1]
            rollPerAllImage = numberImageAllColor[1]
            statusProduct.text = statusProducts[1]
            imageProducts = imageProducts2
            price.text = "\(cost[1])00.000Vnđ"
            tutorial0 = tutorial2
            if colorName2.isEmpty == false {
                items1 = colorName2
                cost1 = costOption2
                setupSegment1() } else { testA = 7 }
            if capacityRAM2.isEmpty == false {
                items2 = capacityRAM2
                cost2 = costRAM2
                setupSegment2() } else { testB = 7 }
            if capacityROM2.isEmpty == false {
                items3 = capacityROM2
                cost3 = costROM2
                setupSegment3() } else { testC = 7 }
            if option12.isEmpty == false {
                items4 = option12
                cost4 = costOption12
                setupSegment4() } else { testD = 7 }
            if option22.isEmpty == false {
                items5 = option22
                cost5 = costOption22
                setupSegment5() } else { testE = 7 }
            if option32.isEmpty == false {
                items6 = option32
                cost6 = costOption32
                setupSegment6() } else { testF = 7 }
        } else if test == 3 {
            rollPerColor = numberImagePerColor[2]
            rollPerAllImage = numberImageAllColor[2]
            statusProduct.text = statusProducts[2]
            imageProducts = imageProducts3
            price.text = "\(cost[2])00.000Vnđ"
            tutorial0 = tutorial3
            if colorName3.isEmpty == false {
                items1 = colorName3
                cost1 = costOption3
                setupSegment1() } else { testA = 7 }
            if capacityRAM3.isEmpty == false {
                items2 = capacityRAM3
                cost2 = costRAM3
                setupSegment2() } else { testB = 7 }
            if capacityROM3.isEmpty == false {
                items3 = capacityROM3
                cost3 = costROM3
                setupSegment3() } else { testC = 7 }
            if option13.isEmpty == false {
                items4 = option13
                cost4 = costOption13
                setupSegment4() } else { testD = 7 }
            if option23.isEmpty == false {
                items5 = option23
                cost5 = costOption23
                setupSegment5() } else { testE = 7 }
            if option33.isEmpty == false {
                items6 = option33
                cost6 = costOption33
                setupSegment6() } else { testF = 7 }

       } else if test == 4 {
           rollPerColor = numberImagePerColor[3]
           rollPerAllImage = numberImageAllColor[3]
           statusProduct.text = statusProducts[3]
           imageProducts = imageProducts4
           price.text = "\(cost[3])00.000Vnđ"
           tutorial0 = tutorial4
           if colorName4.isEmpty == false {
               items1 = colorName4
               cost1 = costOption4
               setupSegment1() } else { testA = 7 }
           if capacityRAM4.isEmpty == false {
               items2 = capacityRAM4
               cost2 = costRAM4
               setupSegment2() } else { testB = 7 }
           if capacityROM4.isEmpty == false {
               items3 = capacityROM4
               cost3 = costROM4
               setupSegment3() } else { testC = 7 }
           if option14.isEmpty == false {
               items4 = option14
               cost4 = costOption14
               setupSegment4() } else { testD = 7 }
           if option24.isEmpty == false {
               items5 = option24
               cost5 = costOption24
               setupSegment5() } else { testE = 7 }
           if option34.isEmpty == false {
               items6 = option34
               cost6 = costOption34
               setupSegment6() } else { testA = 7 }

       } else if test == 5 {
           rollPerColor = numberImagePerColor[4]
           rollPerAllImage = numberImageAllColor[4]
           statusProduct.text = statusProducts[4]
           imageProducts = imageProducts5
           price.text = "\(cost[4])00.000Vnđ"
           tutorial0 = tutorial5
           if colorName5.isEmpty == false {
               items1 = colorName5
               cost1 = costOption5
               setupSegment1() } else { testA = 7 }
           if capacityRAM5.isEmpty == false {
               items2 = capacityRAM5
               cost2 = costRAM5
               setupSegment2() } else { testB = 7 }
           if capacityROM5.isEmpty == false {
               items3 = capacityROM5
               cost3 = costROM5
               setupSegment3() } else { testC = 7 }
           if option15.isEmpty == false {
               items4 = option15
               cost4 = costOption15
               setupSegment4() } else { testD = 7 }
           if option25.isEmpty == false {
               items5 = option25
               cost5 = costOption25
               setupSegment5() } else { testE = 7 }
           if option35.isEmpty == false {
               items6 = option35
               cost6 = costOption35
               setupSegment6() } else { testF = 7 }

       } else if test == 6 {
           rollPerColor = numberImagePerColor[5]
           rollPerAllImage = numberImageAllColor[5]
           statusProduct.text = statusProducts[5]
           imageProducts = imageProducts6
           price.text = "\(cost[5])00.000Vnđ"
           tutorial0 = tutorial6
           if colorName6.isEmpty == false {
               items1 = colorName6
               cost1 = costOption6
               setupSegment1() } else { testA = 7 }
           if capacityRAM6.isEmpty == false {
               items2 = capacityRAM6
               cost2 = costRAM6
               setupSegment2() } else { testB = 7 }
           if capacityROM6.isEmpty == false {
               items3 = capacityROM6
               cost3 = costROM6
               setupSegment3() } else { testC = 7 }
           if option16.isEmpty == false {
               items4 = option16
               cost4 = costOption16
               setupSegment4() } else { testD = 7 }
           if option26.isEmpty == false {
               items5 = option26
               cost5 = costOption26
               setupSegment5() } else { testE = 7 }
           if option36.isEmpty == false {
               items6 = option36
               cost6 = costOption36
               setupSegment6() } else { testF = 7 }

       }
        
        imageProduct.dataSource = self
        imageProduct.delegate = self
    
        title = "Chọn cấu hình phù hợp"
        imageProduct.contentSize = CGSize(width: view.frame.width * CGFloat(imageProducts1.count), height: view.frame.width)

        let rightButton = UIBarButtonItem(title: "Thông số", style: .done, target: self, action: #selector(rightButtonPressed(_:)))
        self.navigationItem.rightBarButtonItems = [rightButton]
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Trở về", style: .done, target: self, action: nil)
        
    }
    @objc func rightButtonPressed(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "specs") as! SpecsViewController
        navigationController?.show(vc, sender: nil)
    }
    func setupBuyViewController() {
        if test == 1 {
            nameLB.text = "\(fullName) \(chipM[0])"
        } else if test == 2 {
            nameLB.text = "\(fullName) \(chipM[1])"
        } else if test == 3 {
            nameLB.text = "\(fullName) \(chipM[2])"
        } else if test == 4 {
            nameLB.text = "\(fullName) \(chipM[3])"
        } else if test == 5{
            nameLB.text = "\(fullName) \(chipM[4])"
        } else if test == 6{
            nameLB.text = "\(fullName) \(chipM[5])"
        }
    }
    func checkBill() {
        if test == 1 {
            price.text = "\(cost[0] + costA + costB + costC + costD + costE + costF)00.000Vnđ"
            nameLB.text = "\(fullName) \(chipM[0]) \(nameOP1) \(nameOP2) \(nameOP3)"
            nameLB1.text = "\(nameOP4) \(nameOP5) \(nameOP6)"
        } else if test == 2 {
            price.text = "\(cost[1] + costA + costB + costC + costD + costE + costF)00.000Vnđ"
            nameLB.text = "\(fullName) \(chipM[1]) \(nameOP1) \(nameOP2) \(nameOP3)"
            nameLB1.text = "\(nameOP4) \(nameOP5) \(nameOP6)"
        } else if test == 3 {
            price.text = "\(cost[2] + costA + costB + costC + costD + costE + costF)00.000Vnđ"
            nameLB.text = "\(fullName) \(chipM[2]) \(nameOP1) \(nameOP2) \(nameOP3)"
            nameLB1.text = "\(nameOP4) \(nameOP5) \(nameOP6)"
        } else if test == 4 {
            price.text = "\(cost[3] + costA + costB + costC + costD + costE + costF)00.000Vnđ"
            nameLB.text = "\(fullName) \(chipM[3]) \(nameOP1) \(nameOP2) \(nameOP3)"
            nameLB1.text = "\(nameOP4) \(nameOP5) \(nameOP6)"
        } else if test == 5 {
            price.text = "\(cost[4] + costA + costB + costC + costD + costE + costF)00.000Vnđ"
            nameLB.text = "\(fullName) \(chipM[4]) \(nameOP1) \(nameOP2) \(nameOP3)"
            nameLB1.text = "\(nameOP4) \(nameOP5) \(nameOP6)"
        } else if test == 6 {
            price.text = "\(cost[5] + costA + costB + costC + costD + costE + costF)00.000Vnđ"
            nameLB.text = "\(fullName) \(chipM[5]) \(nameOP1) \(nameOP2) \(nameOP3)"
            nameLB1.text = "\(nameOP4) \(nameOP5) \(nameOP6)"
        }
    }
    func setupBuyNowAndAddToBag() {
        addToBag.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        buyNow.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        if test == 1 {
            if statusProducts[0] != "Còn hàng" {
                buyNow.alpha = 0.5
            } else {
                buyNow.alpha = 1
                buyNow.addTarget(self, action: #selector(tapBuyNow), for: .touchUpInside)
            }
        } else if test == 2 {
            if statusProducts[1] != "Còn hàng" {
                buyNow.alpha = 0.5
            } else {
                buyNow.alpha = 1
                buyNow.addTarget(self, action: #selector(tapBuyNow), for: .touchUpInside)
            }
        } else if test == 3 {
            if statusProducts[2] != "Còn hàng" {
                buyNow.alpha = 0.5
            } else {
                buyNow.alpha = 1
                buyNow.addTarget(self, action: #selector(tapBuyNow), for: .touchUpInside)
            }
        } else if test == 4 {
            if statusProducts[3] != "Còn hàng" {
                buyNow.alpha = 0.5
            } else {
                buyNow.alpha = 1
                buyNow.addTarget(self, action: #selector(tapBuyNow), for: .touchUpInside)
            }
        } else if test == 5 {
            if statusProducts[4] != "Còn hàng" {
                buyNow.alpha = 0.5
            } else {
                buyNow.alpha = 1
                buyNow.addTarget(self, action: #selector(tapBuyNow), for: .touchUpInside)
            }
        } else if test == 6 {
            if statusProducts[5] != "Còn hàng" {
                buyNow.alpha = 0.5
            } else {
                buyNow.alpha = 1
                buyNow.addTarget(self, action: #selector(tapBuyNow), for: .touchUpInside)
            }
        }
    }
    @objc func tapBuyNow(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "buynow") as! BuyNowViewController
        navigationController?.show(vc, sender: nil)
    }
    func setupRating() {
        viewRating.settings.updateOnTouch = false
        viewRating.settings.starMargin = 5
        viewRating.settings.fillMode = .precise
        viewRating.settings.textColor = .red
        viewRating.settings.textFont = UIFont.systemFont(ofSize: 17)
        if test == 1 {
            viewRating.rating = ratting[0]
            viewRating.text = "\(ratting[0])"
        } else if test == 2 {
            viewRating.rating = ratting[1]
            viewRating.text = "\(ratting[1])"
        } else if test == 3 {
            viewRating.rating = ratting[2]
            viewRating.text = "\(ratting[2])"
        } else if test == 4 {
            viewRating.rating = ratting[3]
            viewRating.text = "\(ratting[3])"
        } else if test == 5 {
            viewRating.rating = ratting[4]
            viewRating.text = "\(ratting[4])"
        } else if test == 6 {
            viewRating.rating = ratting[5]
            viewRating.text = "\(ratting[5])"
        }
        
        viewAllRating.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        viewAllRating.layer.masksToBounds = true
        viewAllRating.configuration = createButtonRatting()
//        viewAllRating.addTarget(self, action: #selector(createButtonRatting), for: .touchUpInside)
    }
    func createButtonRatting() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        if test == 1 {
            config.title = "Xem tất cả \(numberOfCmt[0]) bình luận"
        } else if test == 2 {
            config.title = "Xem tất cả \(numberOfCmt[1]) bình luận"
        } else if test == 3 {
            config.title = "Xem tất cả \(numberOfCmt[2]) bình luận"
        } else if test == 4 {
            config.title = "Xem tất cả \(numberOfCmt[3]) bình luận"
        } else if test == 5 {
            config.title = "Xem tất cả \(numberOfCmt[4]) bình luận"
        } else if test == 6 {
            config.title = "Xem tất cả \(numberOfCmt[5]) bình luận"
        }
        return config
    }
    func setupSegment1() {
        let segment = UISegmentedControl(items: items1)
        segment.addTarget(self, action: #selector(changeSegment1), for: .valueChanged)
        segment.translatesAutoresizingMaskIntoConstraints = false
        
        let tutorial = UILabel()
        tutorial.frame.size = CGSize(width: view1.frame.width - 20, height: CGFloat(heightLBSM_range[1]))
        tutorial.font = UIFont.systemFont(ofSize: CGFloat(heightLBSM_range[1]))
        tutorial.translatesAutoresizingMaskIntoConstraints = false
        tutorial.textColor = .cyan
        tutorial.text = tutorial0[0]
        
        view1.addSubview(segment)
        view1.addSubview(tutorial)
        
        NSLayoutConstraint.activate([
            tutorial.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            tutorial.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            tutorial.topAnchor.constraint(equalTo: statusProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 0)),
            
            segment.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            segment.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            segment.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 1))
        ])
    }
    @objc func changeSegment1(_ sender1: UISegmentedControl) {
        switch sender1.selectedSegmentIndex {
        case 0:
            nameOP1 = "\(items1[0])"
            imageProduct.scrollToItem(at: IndexPath(item: rollPerAllImage * 1, section: 0), at: .right, animated: true)
            costA = cost1[0]
            testA = 1
        case 1:
            nameOP1 = "\(items1[1])"
            imageProduct.scrollToItem(at: IndexPath(item: rollPerColor * 1 + rollPerAllImage, section: 0), at: .right, animated: true)
            costA = cost1[2]
            testA = 2
        case 2:
            nameOP1 = "\(items1[2])"
            imageProduct.scrollToItem(at: IndexPath(item: rollPerColor * 2 + rollPerAllImage, section: 0), at: .right, animated: true)
            costA = cost1[2]
            testA = 3
        case 3:
            nameOP1 = "\(items1[3])"
            imageProduct.scrollToItem(at: IndexPath(item: rollPerColor * 3 + rollPerAllImage, section: 0), at: .right, animated: true)
            costA = cost1[3]
            testA = 4
        case 4:
            nameOP1 = "\(items1[4])"
            imageProduct.scrollToItem(at: IndexPath(item: rollPerColor * 4 + rollPerAllImage, section: 0), at: .right, animated: true)
            costA = cost1[4]
            testA = 5
        case 5:
            nameOP1 = "\(items1[5])"
            imageProduct.scrollToItem(at: IndexPath(item: rollPerColor * 5 + rollPerAllImage, section: 0), at: .right, animated: true)
            costA = cost1[5]
            testA = 6
        default:
            nameOP1 = "\(items1[0])"
            imageProduct.scrollToItem(at: IndexPath(item: 0, section: 0), at: .right, animated: true)
            testA = 0
        }
        checkBill()
    }
    func setupSegment2() {
        let segment = UISegmentedControl(items: items2)
        segment.addTarget(self, action: #selector(changeSegment2), for: .valueChanged)
        segment.translatesAutoresizingMaskIntoConstraints = false
        
        let tutorial = UILabel()
        tutorial.frame.size = CGSize(width: view1.frame.width - 20, height: CGFloat(heightLBSM_range[1]))
        tutorial.font = UIFont.systemFont(ofSize: CGFloat(heightLBSM_range[1]))
        tutorial.translatesAutoresizingMaskIntoConstraints = false
        tutorial.textColor = .cyan
        tutorial.text = tutorial0[1]
        
        view1.addSubview(segment)
        view1.addSubview(tutorial)
        
        NSLayoutConstraint.activate([
            tutorial.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            tutorial.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            tutorial.topAnchor.constraint(equalTo: statusProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 1)),

            segment.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            segment.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            segment.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 2))
        ])
    }
    @objc func changeSegment2(_ sender2: UISegmentedControl) {
        switch sender2.selectedSegmentIndex {
        case 0:
            nameOP2 = "\(items2[0])"
            costB = cost2[0]
            testB = 1
        case 1:
            nameOP2 = "\(items2[1])"
            costB = cost2[1]
            testB = 2
        case 2:
            nameOP2 = "\(items2[2])"
            costB = cost2[2]
            testB = 3
        case 3:
            nameOP2 = "\(items2[3])"
            costB = cost2[3]
            testB = 4
        case 4:
            nameOP2 = "\(items2[4])"
            costB = cost2[4]
            testB = 5
        case 5:
            nameOP2 = "\(items2[5])"
            costB = cost2[5]
            testB = 6
        default:
            nameOP2 = "\(items2[0])"
            testB = 0
        }
        checkBill()
    }
    func setupSegment3() {
        let segment = UISegmentedControl(items: items3)
        segment.addTarget(self, action: #selector(changeSegment3), for: .valueChanged)
        segment.translatesAutoresizingMaskIntoConstraints = false
        
        let tutorial = UILabel()
        tutorial.frame.size = CGSize(width: view1.frame.width - 20, height: CGFloat(heightLBSM_range[1]))
        tutorial.font = UIFont.systemFont(ofSize: CGFloat(heightLBSM_range[1]))
        tutorial.translatesAutoresizingMaskIntoConstraints = false
        tutorial.textColor = .cyan
        tutorial.text = tutorial0[2]
        
        view1.addSubview(segment)
        view1.addSubview(tutorial)
        
        NSLayoutConstraint.activate([
            tutorial.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            tutorial.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            tutorial.topAnchor.constraint(equalTo: statusProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 2)),
            
            segment.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            segment.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            segment.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 3))
        ])
    }
    @objc func changeSegment3(_ sender3: UISegmentedControl) {
        switch sender3.selectedSegmentIndex {
        case 0:
            nameOP3 = "\(items3[0])"
            costC = cost3[0]
            testC = 1
        case 1:
            nameOP3 = "\(items3[1])"
            costC = cost3[1]
            testC = 2
        case 2:
            nameOP3 = "\(items3[2])"
            costC = cost3[2]
            testC = 3
        case 3:
            nameOP3 = "\(items3[3])"
            costC = cost3[3]
            testC = 4
        case 4:
            nameOP3 = "\(items3[4])"
            costC = cost3[4]
            testC = 5
        case 5:
            nameOP3 = "\(items3[5])"
            costC = cost3[5]
            testC = 6
        default:
            nameOP3 = "\(items3[0])"
            testC = 0
        }
        checkBill()
    }
    func setupSegment4() {
        let segment = UISegmentedControl(items: items4)
        segment.addTarget(self, action: #selector(changeSegment4), for: .valueChanged)
        segment.translatesAutoresizingMaskIntoConstraints = false
        
        let tutorial = UILabel()
        tutorial.frame.size = CGSize(width: view1.frame.width - 20, height: CGFloat(heightLBSM_range[1]))
        tutorial.font = UIFont.systemFont(ofSize: CGFloat(heightLBSM_range[1]))
        tutorial.translatesAutoresizingMaskIntoConstraints = false
        tutorial.textColor = .cyan
        tutorial.text = tutorial0[3]
        
        view1.addSubview(segment)
        view1.addSubview(tutorial)
        
        NSLayoutConstraint.activate([
            tutorial.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            tutorial.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            tutorial.topAnchor.constraint(equalTo: statusProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 3)),
            
            segment.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            segment.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            segment.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 4))
        ])
    }
    @objc func changeSegment4(_ sender4: UISegmentedControl) {
        switch sender4.selectedSegmentIndex {
        case 0:
            nameOP4 = "\(items4[0])"
            costD = cost4[0]
            testD = 1
        case 1:
            nameOP4 = "\(items4[1])"
            costD = cost4[1]
            testD = 2
        case 2:
            nameOP4 = "\(items4[2])"
            costD = cost4[2]
            testD = 3
        case 3:
            nameOP4 = "\(items4[3])"
            costD = cost4[3]
            testD = 4
        case 4:
            nameOP4 = "\(items4[4])"
            costD = cost4[4]
            testD = 5
        case 5:
            nameOP4 = "\(items4[5])"
            costD = cost4[5]
            testD = 6
        default:
            testD = 0
        }
        checkBill()
    }
    func setupSegment5() {
        let segment = UISegmentedControl(items: items5)
        segment.addTarget(self, action: #selector(changeSegment5), for: .valueChanged)
        segment.translatesAutoresizingMaskIntoConstraints = false
        
        let tutorial = UILabel()
        tutorial.frame.size = CGSize(width: view1.frame.width - 20, height: CGFloat(heightLBSM_range[1]))
        tutorial.font = UIFont.systemFont(ofSize: CGFloat(heightLBSM_range[1]))
        tutorial.translatesAutoresizingMaskIntoConstraints = false
        tutorial.textColor = .cyan
        tutorial.text = tutorial0[4]
        
        view1.addSubview(segment)
        view1.addSubview(tutorial)
        
        NSLayoutConstraint.activate([
            tutorial.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            tutorial.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            tutorial.topAnchor.constraint(equalTo: statusProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 4)),
            
            segment.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            segment.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            segment.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant:  CGFloat(heightLBSM_range[0] * 5))
        ])
    }
    @objc func changeSegment5(_ sender5: UISegmentedControl) {
        switch sender5.selectedSegmentIndex {
        case 0:
            nameOP5 = "\(items5[0])"
            costE = cost5[0]
            testE = 1
        case 1:
            nameOP5 = "\(items5[1])"
            costE = cost5[1]
            testE = 2
        case 2:
            nameOP5 = "\(items5[2])"
            costE = cost5[2]
            testE = 3
        case 3:
            nameOP5 = "\(items5[3])"
            costE = cost5[3]
            testE = 4
        case 4:
            nameOP5 = "\(items5[4])"
            costE = cost5[4]
            testE = 5
        case 5:
            nameOP5 = "\(items5[5])"
            costE = cost5[5]
            testE = 6
        default:
            testE = 0
        }
        checkBill()
    }
    func setupSegment6() {
        let segment = UISegmentedControl(items: items6)
        segment.addTarget(self, action: #selector(changeSegment6), for: .valueChanged)
        segment.translatesAutoresizingMaskIntoConstraints = false
        
        let tutorial = UILabel()
        tutorial.frame.size = CGSize(width: view1.frame.width - 20, height: CGFloat(heightLBSM_range[1]))
        tutorial.font = UIFont.systemFont(ofSize: CGFloat(heightLBSM_range[1]))
        tutorial.translatesAutoresizingMaskIntoConstraints = false
        tutorial.textColor = .cyan
        tutorial.text = tutorial0[5]
        
        view1.addSubview(segment)
        view1.addSubview(tutorial)
        
        NSLayoutConstraint.activate([
            tutorial.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            tutorial.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            tutorial.topAnchor.constraint(equalTo: statusProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 5)),
            
            segment.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10),
            segment.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10),
            segment.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: CGFloat(heightLBSM_range[0] * 6))
        ])
    }
    @objc func changeSegment6(_ sender6: UISegmentedControl) {
        switch sender6.selectedSegmentIndex {
        case 0:
            nameOP6 = "\(items6[0])"
            costF = cost6[0]
            testF = 1
        case 1:
            nameOP6 = "\(items6[1])"
            costF = cost6[1]
            testF = 2
        case 2:
            nameOP6 = "\(items6[2])"
            costF = cost6[2]
            testF = 3
        case 3:
            nameOP6 = "\(items6[3])"
            costF = cost6[3]
            testF = 4
        case 4:
            nameOP6 = "\(items6[4])"
            costF = cost6[4]
            testF = 5
        case 5:
            nameOP6 = "\(items6[5])"
            costF = cost6[5]
            testF = 6
        default:
            testF = 0
        }
        checkBill()
    }
    @IBAction func tapToAddBag(_ sender: Any) {
        if testA != 0 && testB != 0 && testC != 0 && testD != 0 && testE != 0 && testF != 0 {
            showAlertTrue()
        } else {
            showAlertFalse()
        }
    }
    @IBAction func tapToBuyNow(_ sender: Any) {
        if testA != 0 && testB != 0 && testC != 0 && testD != 0 && testE != 0 && testF != 0 {
        } else {
            showAlertFalse()
        }
    }
    @IBAction func tapToViewRatting(_ sender: Any) {
    }
    func showAlertTrue() {
        let alert = UIAlertController(title: "Thông báo", message: "Thêm vào giỏ hàng thành công", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        present(alert, animated: true)
    }
    func showAlertFalse() {
        let alert = UIAlertController(title: "Thông báo", message: "Vui lòng chọn đầy đủ cấu hình", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Chọn lại", style: .cancel))
        present(alert, animated: true)
    }
}
extension BuyViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageProducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageProduct.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BuyImageCollectionViewCell
        cell.imageProduct.image = UIImage(named: imageProducts[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
