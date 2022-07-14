//
//  ViewController.swift
//  PrefferedDate
//
//  Created by Seo Jae Hoon on 2022/07/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var hundredLabels: [UILabel]!
    @IBOutlet var dDayLabels: [UILabel]!
    
    
    private let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // DateFormatter : 전세계적인 표준시, 알아보기 쉬운 날짜 + 지역별 시간대 (yyyy.MM.dd hh:mm:ss)
        
        let format = DateFormatter()
        format.dateFormat = "yyyy년 M월 d일"
        
        //var result = format.string(from: Date() )
        //print(result, Date() )
        
        let word = "3월 2일, 19년"
        let dateResult = format.date(from: word)
        print(dateResult)
        
        // +100, +200 ... label에 표기
        for i in 0...hundredLabels.count - 1 {
            hundredLabels[i].text = "+\((i+1) * 100)"
        }
        designHundredLabels(labels: hundredLabels)
        designDDayLabels(labels: dDayLabels)
        //datepick 초기 설정
        datePicker.locale = Locale(identifier: "ko_KR")
        datePicker.datePickerMode = .date
    }

    //datePicker 날짜 선택
    @IBAction func dDaypicked(_ sender: UIDatePicker) {
        
        var currentDate = sender.date
        dDayCaculate(current: currentDate)
    }
    
    // 100단위 label design
    // 추후에 이미지 넣고 backgroundColor -> systembackgroundcolor로 변경
    func designHundredLabels(labels: [UILabel]) {
        
        for item in labels {
            item.textColor = .white
            item.backgroundColor = .lightGray
            item.font = UIFont.boldSystemFont(ofSize: 20)
            item.layer.cornerRadius = 3
            item.layer.borderWidth = 0.5
            item.layer.borderColor = UIColor.black.cgColor
        }
        
    }
    // d-day 날짜 label
    func designDDayLabels(labels: [UILabel]) {
        
        for item in labels{
            item.textColor = .black
            item.font = UIFont.systemFont(ofSize: 13)
            item.layer.cornerRadius = 3
            item.layer.borderWidth = 1
            item.layer.borderColor = UIColor.black.cgColor
        }
        
        
    }
    
    func dDayCaculate(current: Date){
        
        let format = DateFormatter()
        format.dateFormat = "yyyy년 M월 d일"
        // 86400 = 하루 -> 99번 지나면 100일째 되는 날
        for i in 0...3 {
            dDayLabels[i].text = format.string(from: current + TimeInterval((86400 * 99 * (i + 1))))
        }

    }
    
    //추후에 수정
    // 1. image 넣기
    // 2. label.layer. 관련 지우기
    
}

