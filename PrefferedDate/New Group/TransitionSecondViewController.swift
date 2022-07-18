//
//  TransitionSecondViewController.swift
//  PrefferedDate
//
//  Created by Seo Jae Hoon on 2022/07/15.
//

import UIKit

class TransitionSecondViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    /*
     1. 앱을 켜면 데이터를 가지고 와서 텍스트 뷰에 보여줘야 함.(가지고 오는 작업 뷰딛로드, 뷰윌어피얼에)
     2. 바뀐 데이터를 저장해줘야함.
     => UserDefaults
     */
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Transition Second View Controller", #function)
        
        
        
        guard let textData = UserDefaults.standard.string(forKey: "nickname") else { mottoTextView.text = "고래밥"; return }
        
        // 데이터를 가지고 와야함/ key는 고유한 값 .standard 다음에는 가지고오고 싶은 타입
        mottoTextView.text = textData
        
        // 껏다 켰을 때
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "happy"))"

        
        
        //print( UserDefaults.standard.string(forKey: "phineNumber"))
        //print( UserDefaults.standard.integer(forKey: "age"))
        //print( UserDefaults.standard.bool(forKey: "inapp"))
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Transition Second View Controller", #function)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Transition Second View Controller", #function)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Transition Second View Controller", #function)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Transition Second View Controller", #function)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
        //저장하는 코드
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다.")
        
        
    }
    
    @IBAction func emoButtonTapped(_ sender: UIButton) {
        
        // 기존 데이터 값 가져오기
        let currentValue = UserDefaults.standard.integer(forKey: "happy")
        // 감정 버튼 눌렸을 때
        let updateValue = currentValue + 1
        // 새로운 값을 저장
        UserDefaults.standard.set(updateValue, forKey: "happy")
        // 저장된 값을 레이블에 새로운 내용 보여주기(다시 도큐먼트에서 가져와서 넣어줌)
        countLabel.text = "\(UserDefaults.standard.integer(forKey: "happy"))"
        
    }
    
    
}
