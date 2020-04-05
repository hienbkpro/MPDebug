//
//  ViewController.swift
//  MPDebug
//
//  Created by Manh Pham on 4/6/20.
//  Copyright © 2020 Manh Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        URLSession.shared.dataTask(with: URL(string: "https://httpbin.org/absolute-redirect/302")!) { (data, response, error) in
            print(data?.count ?? 0)
        }
        .resume()
        
    }


}

