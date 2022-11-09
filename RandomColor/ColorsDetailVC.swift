//
//  ColorsDetailVC.swift
//  RandomColor
//
//  Created by Konrad Tomczuk on 07/11/2022.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue

        // Do any additional setup after loading the view.
    }
    


}
