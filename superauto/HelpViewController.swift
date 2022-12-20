//
//  HelpViewController.swift
//  superauto
//
//  Created by Luyện Hà Luyện on 03/12/2022.
//

import UIKit

class HelpViewController: UIViewController {

    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var popupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setPopUpButton()
        
    }
    func setPopUpButton(){
        let optionClosure = {(action: UIAction) in
            print(action.title)
        }
        
        popupButton.menu = UIMenu(children: [
            UIAction(title: "Chọn tỉnh thành", state: .off, handler: {(_) in
                self.text.text = "\nTổng đài hỗ trợ Apple Tiếng Việt là tổng đài kết nối trực tiếp với nhân viên chăm sóc khách hàng của Apple để hỗ trợ giải đáp các vấn đề liên quan đến sản phẩm của Apple như iPhone, iPad, MacBook, iMac,... Nhân viên chăm sóc khách hàng sẽ giải đáp bằng tiếng Việt hoàn toàn miễn phí.\n \n - Số điện thoại tổng đài hỗ trợ Apple Tiếng Việt: 1800 1127 \n\n - Thời gian hoạt động: Từ 9h - 18h, thứ 2 - thứ 6. \n\n * Một số câu hỏi thường gặp: \n - Gọi tổng đài Apple ngoài giờ có được không? \n TL: Được, nhưng bạn sẽ gặp nhân viên nói chuyện bằng tiếng Anh do đã ngoài giờ làm việc của nhân viên tiếng Việt. \n  - Tổng đài gọi điện lại sử dụng tiếng Anh? \n TL: Nếu tổng đài gọi cho bạn nhưng đầu dây nói tiếng Anh, bạn chỉ cần nói Viet Nam hoặc gác máy để nhân viên gọi lại bạn lần sau với tiếng Việt."
            }),
            UIAction(title: "Hà Nội", state: .off, handler: {(_) in
                self.text.text = "1 - VietcomIndo\n\n - Địa chỉ: 389A-391 Trường Chinh, P.Khương Trung, Q.Thanh Xuân, Hà Nội. \n - Sản phẩm nhận bảo hành: Điện thoại di động, Laptop, Máy tính bảng, Đồng hồ thông minh \n - Điện thoại: 02473.077977 \n\n\n\n\n * Số điện thoại tổng đài hỗ trợ Apple Tiếng Việt: 1800 1127 \n\n * Thời gian hoạt động: Từ 9h - 18h, thứ 2 - thứ 6."
            }),
            UIAction(title: "Hồ Chí Minh", state: .off, handler:  {(_) in
                self.text.text = "1 - TOPCARE-thegioididong\n - Địa chỉ: Số 249 Nguyễn Văn Luông, Phường 11, Quận 6, Thành phố Hồ Chí Minh. \n - Sản phẩm nhận bảo hành: Điện thoại di động, Laptop, Máy tính bảng, Đồng hồ thông minh, Phụ kiện \n - Điện thoại: 18001783\n\n 2 - \n - Địa chỉ: 32 Cách Mạng Tháng 8 , Phường 6 , Quận 3, HCM. \n - Sản phẩm nhận bảo hành: Điện thoại di động, Laptop, Máy tính bảng, Đồng hồ thông minh \n - Điện thoại: 0283 9308549/50/51\n\n3 - TTBH Vietcomindo\n - Địa chỉ: 31 Phan Bội Châu, Phường 14, Quận Bình Thạnh, TP. HCM. \n - Sản phẩm nhận bảo hành: Điện thoại di động, Laptop, Máy tính bảng, Đồng hồ thông minh\n - Điện thoại: 0283.9952955\n\n 4 - TTBH Thuận Mỹ\n - Địa chỉ:02 Thảo Điền Q2, TP HCM. \n - Sản phẩm nhận bảo hành: Điện thoại di động, Laptop, Máy tính bảng, Đồng hồ thông minh\n - Điện thoại: 028 35194277/78/79 - 0903652326\n\n 5 - NPP FPT\n - Địa chỉ: Số 72B Đinh Tiên Hoàng, P. Đa Kao, Quận 1,TP.HCM\n - Sản phẩm nhận bảo hành: Điện thoại di động, Đồng hồ thông minh\n - Điện thoại: 028 73000911 \n\n\n\n\n * Số điện thoại tổng đài hỗ trợ Apple Tiếng Việt: 1800 1127 \n\n * Thời gian hoạt động: Từ 9h - 18h, thứ 2 - thứ 6."
            }),
            UIAction(title: "Cần Thơ", state: .off, handler:  {(_) in
                self.text.text = "1 - \n - Địa chỉ: 117 Lý Tự Trọng - An Phú - Ninh Kiều - Cần Thơ\n - Sản phẩm nhận bảo hành: Điện thoại di động, Laptop, Máy tính bảng, Đồng hồ thông minh\n - Điện thoại: 0292 - 3734415/16 - 0903652326\n\n2 - \n - Địa chỉ: 90 Ung Văn Khiêm ( TTTM Cái Khế ), Phường Cái Khế, Q Ninh Kiều, TP Cần Thơ\n - Sản phẩm nhận bảo hành: Điện thoại di động, Laptop, Đồng hồ thông minh\n - Điện thoại: 0292 3781978"
            }),
            UIAction(title: "Đà Nẵng", state: .off, handler:  {(_) in
                self.text.text = "1 - \n - Địa chỉ: 38 Lê Đình Lý ,P. Thạc Gián , Q. Thanh Khê , TP Đà Nẵng\n - Sản phẩm nhận bảo hành: Điện thoại di động, Đồng hồ thông minh\n - Điện thoại: 0236 3562662"
            }),
            UIAction(title: "Hải Phòng", state: .off, handler:  {(_) in
                self.text.text = "1 - \n - Địa chỉ: Số 66 Đường 5 Khu đô thị Ven sông Lạch Tray, Đường Võ Nguyên Giáp, Phường Kênh Dương, Quận Lê Chân, TP Hải Phòng\n - Sản phẩm nhận bảo hành: Điện thoại di động, Đồng hồ thông minh\n - Điện thoại: 02253 835845"
            }),
            UIAction(title: "Nghệ An", state: .off , handler:  {(_) in
                self.text.text = "1 - \n - Địa chỉ:  Nguyễn Thị Minh Khai , Phường Hưng Bình - TP Vinh - Nghệ An\n - Sản phẩm nhận bảo hành: Điện thoại di động, Đồng hồ thông minh\n - Điện thoại: 0238 8767368"
            })
        ])
        
        popupButton.showsMenuAsPrimaryAction = true
        popupButton.changesSelectionAsPrimaryAction = true
    }
        
    @IBAction func selecButton(_ sender: UIButton) {
    }
}
