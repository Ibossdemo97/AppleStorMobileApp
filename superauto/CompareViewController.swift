//
//  CompareViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 29/11/2022.
//

import UIKit

class CompareViewController: UIViewController {

    @IBOutlet weak var scrollCompare: UIScrollView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var imageCollec: UICollectionView!
    @IBOutlet weak var newCompare: UITextView!
    
    override func viewDidLayoutSubviews() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageCollec.dataSource = self
        imageCollec.delegate = self
        imageCollec.register(CompareImageCollectionViewCell.nib(), forCellWithReuseIdentifier: "cell")
        imageCollec.contentSize = CGSize(width: view.frame.width * CGFloat(compareImageName.count), height: view.frame.width)
        scrollCompare.contentSize = CGSize(width: view.frame.width, height: 5000)
//        view.addSubview(scrollCompare)
//        scrollCompare.addSubview(view1)
        setupNavi()
        
        if chipNumber1 == 6 {
//            scrollCompare.contentSize = CGSize(width: view.bounds.width, height: 890)
            view1.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 890)
            createButton1()
            createButton2()
            createButton3()
            createButton4()
            createButton5()
            createButton6()
        } else if chipNumber1 == 5 {
//            scrollCompare.contentSize = CGSize(width: view.bounds.width, height: 890)
            view1.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 890)
            createButton1()
            createButton2()
            createButton3()
            createButton4()
            createButton5()
        } else if chipNumber1 == 4 {
//            scrollCompare.contentSize = CGSize(width: view.bounds.width, height: 890)
            view1.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 890)
            createButton1()
            createButton2()
            createButton3()
            createButton4()
        } else if chipNumber1 == 3 {
//            scrollCompare.contentSize = CGSize(width: view.bounds.width, height: 3000)
            print("Height trong main \(view1.frame.size.height)")
            view1.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 600)
            createButton1()
            createButton2()
            createButton3()
            print("Height vừa set \(view1.frame.size.height)")
        } else if chipNumber1 == 2 {
//            scrollCompare.contentSize = CGSize(width: view.bounds.width, height: 890)
            view1.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 890)
            createButton1()
            createButton2()
        } else if chipNumber1 == 1{
//            let viewController: [UIViewController] = self.navigationController!.viewControllers as! [UIViewController]
//            for aViewController in viewController {
//                if (aViewController is OverviewViewController) {
//                    aViewController.viewWillAppear(true)
//                    let vc = (aViewController as! OverviewViewController)
//                    self.navigationController?.popToViewController(aViewController, animated: true)
//                }
//            }
            let view2 = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height))
            view2.backgroundColor = .black
            view.addSubview(view2)
            let vc = storyboard?.instantiateViewController(withIdentifier: "overview") as! OverviewViewController
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        testA = 0
        testB = 0
        testC = 0
        testD = 0
        testE = 0
        testF = 0
    }
    func setupNavi() {
        if chipNumber1 != 1 {
            self.title = "Chọn \(fullName) phù hợp"
        } else {
            title = ""
        }
    }
    func createButton1() {
        let button1 = UIButton(frame: CGRect(x: view.center.x - 172, y: view.frame.width + newCompare.frame.height + 10, width: 354, height: 60))
        button1.layer.cornerRadius = 26
        button1.layer.masksToBounds = true
        button1.tintColor = .white
        button1.configuration = createConfig1()
        button1.addTarget(self, action: #selector(taptoButton1), for: .touchUpInside)
        view1.addSubview(button1)
    }
    func createConfig1() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = .blue
        config.title = "\(buttonTitle[0])"
        config.subtitle = "Giá từ \(cost[0])00.000Vnđ"
        config.titleAlignment = .center
        return config
    }
    @objc func taptoButton1(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "overview") as! OverviewViewController
        test = 1
        navigationController?.pushViewController(vc, animated: true)
    }
    func createButton2() {
        let button2 = UIButton(frame: CGRect(x: view.center.x - 172, y: view.frame.width + newCompare.frame.height + 75, width: 354, height: 60))
        button2.layer.cornerRadius = 26
        button2.layer.masksToBounds = true
        button2.tintColor = .white
        button2.configuration = createConfig2()
        button2.addTarget(self, action: #selector(taptoButton2), for: .touchUpInside)
        view1.addSubview(button2)
    }
    func createConfig2() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = .blue
        config.title = "\(buttonTitle[1])"
        config.subtitle = "Giá từ \(cost[1])00.000Vnđ"
        config.titleAlignment = .center
        return config
    }
    @objc func taptoButton2(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "overview") as! OverviewViewController
        test = 2
        navigationController?.pushViewController(vc, animated: true)
    }
    func createButton3() {
        let button3 = UIButton( frame: CGRect(x: view.center.x - 172, y: view.frame.width + newCompare.frame.height + 140, width: 354, height: 60))
        button3.layer.cornerRadius = 26
        button3.layer.masksToBounds = true
        button3.tintColor = .white
        button3.configuration = createConfig3()
        button3.addTarget(self, action: #selector(taptoButton3), for: .touchUpInside)
        view1.addSubview(button3)
    }
    func createConfig3() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = .blue
        config.title = "\(buttonTitle[2])"
        config.subtitle = "Giá từ \(cost[2])00.000Vnđ"
        config.titleAlignment = .center
        return config
    }
    @objc func taptoButton3(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "overview") as! OverviewViewController
        test = 3
        navigationController?.pushViewController(vc, animated: true)
    }
    func createButton4() {
        let button4 = UIButton(frame: CGRect(x: view.center.x - 172, y: view.frame.width + newCompare.frame.height + 205, width: 354, height: 60))
        button4.layer.cornerRadius = 26
        button4.layer.masksToBounds = true
        button4.tintColor = .white
        button4.configuration = createConfig4()
        button4.addTarget(self, action: #selector(taptoButton4), for: .touchUpInside)
        view1.addSubview(button4)
    }
    func createConfig4() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = .blue
        config.title = "\(buttonTitle[3])"
        config.subtitle = "Giá từ \(cost[3])00.000Vnđ"
        config.titleAlignment = .center
        return config
    }
    @objc func taptoButton4(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "overview") as! OverviewViewController
        test = 4
        navigationController?.pushViewController(vc, animated: true)
    }
    func createButton5() {
        let button5 = UIButton(frame: CGRect(x: view.center.x - 172, y: view.frame.width + newCompare.frame.height + 270, width: 354, height: 60))
        button5.layer.cornerRadius = 26
        button5.layer.masksToBounds = true
        button5.tintColor = .white
        button5.configuration = createConfig5()
        button5.addTarget(self, action: #selector(taptoButton5), for: .touchUpInside)
        view1.addSubview(button5)
    }
    func createConfig5() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = .blue
        config.title = "\(buttonTitle[4])"
        config.subtitle = "Giá từ \(cost[4])00.000Vnđ"
        config.titleAlignment = .center
        return config
    }
    @objc func taptoButton5(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "overview") as! OverviewViewController
        test = 5
        navigationController?.pushViewController(vc, animated: true)
    }
    func createButton6() {
        let button6 = UIButton(frame: CGRect(x: view.center.x - 172, y: view.frame.width + newCompare.frame.height + 335, width: 354, height: 60))
        button6.layer.cornerRadius = 26
        button6.layer.masksToBounds = true
        button6.tintColor = .white
        button6.configuration = createConfig6()
        button6.addTarget(self, action: #selector(taptoButton6), for: .touchUpInside)
        view1.addSubview(button6)
    }
    func createConfig6() -> UIButton.Configuration {
        var config: UIButton.Configuration = .filled()
        config.baseBackgroundColor = .blue
        config.title = "\(buttonTitle[5])"
        config.subtitle = "Giá từ \(cost[5])00.000Vnđ"
        config.titleAlignment = .center
        return config
    }
    @objc func taptoButton6(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "overview") as! OverviewViewController
        test = 6
        navigationController?.pushViewController(vc, animated: true)
    }
}
extension CompareViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return compareImageName.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollec.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CompareImageCollectionViewCell
        cell.imageCompare.image = UIImage(named: compareImageName[indexPath.row])
        cell.imageCompare.frame.size.height = view.frame.width
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: imageCollec.frame.width, height: imageCollec.frame.width)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}

