//
//  TransitionFirstViewController.swift
//  PrefferedDate
//
//  Created by Seo Jae Hoon on 2022/07/15.
//

import UIKit

class TransitionFirstViewController: UIViewController {

    @IBOutlet weak var ranNumLabel: UILabel!
    // 뷰컨트롤 생명 주기 중 하나
    override func viewDidLoad() {
        super.viewDidLoad()

        print(#function)
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        
        ranNumLabel.text = "\(Int.random(in: 1...100))"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    //
    @IBAction func unwindTransitionFirstVC(jackSegue: UIStoryboardSegue){
        
        
    }
    
}
