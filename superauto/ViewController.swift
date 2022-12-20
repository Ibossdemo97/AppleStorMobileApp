//
//  ViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 29/11/2022.
//

import UIKit

let fullName = "MacBooks Air"
let chipNumber1 = 3
let chipM = ["M1", "M2", "M2"]
let statusProducts = ["Hết hàng", "Còn hàng", "Còn hàng"]
let compareImageName = ["AirM1vM2", "AirM1vsM2", "GPU8Cvs10C", "M2Chip"]
let imageOverview = ["MacBookAirM1Overview", "MacBookAirM2Overview", "MacBookAirM2Overview"]
let imageSpecs = ["AirM1Specs", "AirM2Specs", "AirM2Specs"]
let buttonTitle = ["CPU M1 với 8-CPU và 7-GPU", "CPU M2 với 8-CPU và 8-GPU", "CPU M2 với 8-CPU và 10-GPU"]
let cost: [Double] = [25.0, 30.0, 36.5]
let ratting: [Double] = [9.7, 8.2, 7.7]
let numberOfCmt = [123, 34, 12]

let imageProducts1 = ["AirM1AllColor1",
                      "AirM1Space1",
                      "AirM1Space2",
                      "AirM1Space3",
                      "AirM1Space4",
                      "AirM1Space5",
                      "AirM1Silver1",
                      "AirM1Silver2",
                      "AirM1Silver3",
                      "AirM1Silver4",
                      "AirM1Silver5",
                      "AirM1Gold1",
                      "AirM1Gold2",
                      "AirM1Gold3",
                      "AirM1Gold4",
                      "AirM1Gold5"
                                    ]
let imageProducts2 = ["AirM2AllColor1",
                      "AirM2Grey1",
                      "AirM2Grey2",
                      "AirM2Grey3",
                      "AirM2Grey4",
                      "AirM2Grey5",
                      "AirM2Grey6",
                      "AirM2Midnight1",
                      "AirM2Midnight2",
                      "AirM2Midnight3",
                      "AirM2Midnight4",
                      "AirM2Midnight5",
                      "AirM2Midnight6",
                      "AirM2Grey1",
                      "AirM2Grey2",
                      "AirM2Grey3",
                      "AirM2Grey4",
                      "AirM2Grey5",
                      "AirM2Grey6",
                      "AirM2Gold1",
                      "AirM2Gold2",
                      "AirM2Gold3",
                      "AirM2Gold4",
                      "AirM2Gold5",
                      "AirM2Gold6"
                                    ]
let imageProducts3 = ["AirM2AllColor1",
                      "AirM2Grey1",
                      "AirM2Grey2",
                      "AirM2Grey3",
                      "AirM2Grey4",
                      "AirM2Grey5",
                      "AirM2Grey6",
                      "AirM2Midnight1",
                      "AirM2Midnight2",
                      "AirM2Midnight3",
                      "AirM2Midnight4",
                      "AirM2Midnight5",
                      "AirM2Midnight6",
                      "AirM2Grey1",
                      "AirM2Grey2",
                      "AirM2Grey3",
                      "AirM2Grey4",
                      "AirM2Grey5",
                      "AirM2Grey6",
                      "AirM2Gold1",
                      "AirM2Gold2",
                      "AirM2Gold3",
                      "AirM2Gold4",
                      "AirM2Gold5",
                      "AirM2Gold6"
                                    ]
let imageProducts4 = [String]()
let imageProducts5 = [String]()
let imageProducts6 = [String]()

let tutorial1 = ["Chọn màu sắc mà bạn yêu thích.", "Chọn dung lượng RAM phù hợp với bạn.", "Chọn dung lượng bộ nhớ trong phù hợp với bạn.", "Bạn muốn mua AppleCare chứ?"]
let tutorial2 = ["Chọn màu sắc mà bạn yêu thích.", "Chọn dung lượng RAM phù hợp với bạn.", "Chọn dung lượng bộ nhớ trong phù hợp với bạn.", "Chọn bộ sạc phù hợp với bạn.", "Bạn muốn mua AppleCare chứ?"]
let tutorial3 = ["Chọn màu sắc mà bạn yêu thích.", "Chọn dung lượng RAM phù hợp với bạn.", "Chọn dung lượng bộ nhớ trong phù hợp với bạn.", "Chọn bộ sạc phù hợp với bạn.", "Bạn muốn mua AppleCare chứ?"]
let tutorial4 = [String]()
let tutorial5 = [String]()
let tutorial6 = [String]()

let colorName1 = ["Xám", "Bạc", "Vàng"]
let colorName2 = ["Xám", "Xanh", "Bạc", "Vàng"]
let colorName3 = ["Xám", "Xanh", "Bạc", "Vàng"]
let colorName4 = [String]()
let colorName5 = [String]()
let colorName6 = [String]()
let costOption1: [Double] = [0.0, 0.0, 0.0]
let costOption2: [Double] = [0.0, 0.0, 0.0, 0.0]
let costOption3: [Double] = [0.0, 0.0, 0.0, 0.0]
let costOption4 = [Double]()
let costOption5 = [Double]()
let costOption6 = [Double]()

let numberImageAllColor = [1, 1, 1 ]
let numberImagePerColor = [5, 6, 6]

let capacityRAM1 = ["8GB", "16GB"]
let capacityRAM2 = ["8GB", "16GB", "24GB"]
let capacityRAM3 = ["8GB", "16GB", "24GB"]
let capacityRAM4 = [String]()
let capacityRAM5 = [String]()
let capacityRAM6 = [String]()
let costRAM1: [Double] = [0.0, 5.0]
let costRAM2: [Double] = [0.0, 5.0, 10.0]
let costRAM3: [Double] = [0.0, 5.0, 10.0]
let costRAM4 = [Double]()
let costRAM5 = [Double]()
let costRAM6 = [Double]()
let capacityROM1 = ["256GB", "512GB", "1TB", "2TB"]
let capacityROM2 = ["256GB", "512GB", "1TB", "2TB"]
let capacityROM3 = ["256GB", "512GB", "1TB", "2TB"]
let capacityROM4 = [String]()
let capacityROM5 = [String]()
let capacityROM6 = [String]()
let costROM1: [Double] = [0.0, 5.0, 10.0, 20.0]
let costROM2: [Double] = [0.0, 5.0, 10.0, 20.0]
let costROM3: [Double] = [0.0, 5.0, 10.0, 20.0]
let costROM4 = [Double]()
let costROM5 = [Double]()
let costROM6 = [Double]()
let option11 = ["Không AppleCare+", "AppleCare+ 1năm", "AppleCare+ 3năm"]
let option12 = ["Sạc 1 cổng 30W", "Sạc 2 cổng 35W", "Sạc 1 cổng 65W"]
let option13 = ["Sạc 1 cổng 30W", "Sạc 2 cổng 35W", "Sạc 1 cổng 65W"]
let option14 = [String]()
let option15 = [String]()
let option16 = [String]()
let costOption11: [Double] = [0.0, 1.7, 4.7]
let costOption12: [Double] = [0.0, 0.5, 0.5]
let costOption13: [Double] = [0.0, 0.5, 0.5]
let costOption14 = [Double]()
let costOption15 = [Double]()
let costOption16 = [Double]()
let option21 = [String]()
let option22 = ["Không AppleCare+", "AppleCare+ 1năm", "AppleCare+ 3năm"]
let option23 = ["Không AppleCare+", "AppleCare+ 1năm", "AppleCare+ 3năm"]
let option24 = [String]()
let option25 = [String]()
let option26 = [String]()
let costOption21 = [Double]()
let costOption22: [Double] = [0.0, 1.9, 5.5]
let costOption23: [Double] = [0.0, 1.9, 5.5]
let costOption24 = [Double]()
let costOption25 = [Double]()
let costOption26 = [Double]()
let option31 = [String]()
let option32 = [String]()
let option33 = [String]()
let option34 = [String]()
let option35 = [String]()
let option36 = [String]()
let costOption31 = [Double]()
let costOption32 = [Double]()
let costOption33 = [Double]()
let costOption34 = [Double]()
let costOption35 = [Double]()
let costOption36 = [Double]()
let sizeImageOverview1:[Double] = [677, 10339]
let sizeImageOverview2:[Double] = [683, 3088]
let sizeImageOverview3:[Double] = [683, 3088]
let sizeImageOverview4 = [Double]()
let sizeImageOverview5 = [Double]()
let sizeImageOverview6 = [Double]()
let sizeImageSpecs1:[Double] = [1003, 7173]
let sizeImageSpecs2:[Double] = [995, 8710]
let sizeImageSpecs3:[Double] = [995, 8710]
let sizeImageSpecs4 = [Double]()
let sizeImageSpecs5 = [Double]()
let sizeImageSpecs6 = [Double]()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

