//
//  StormViewerVC.swift
//  StormViewer
//
//  Created by Marcus Richard on 7/20/20.
//  Copyright © 2020 Marcus Richard. All rights reserved.
//

import UIKit

class StormViewerVC: UIViewController {

	var pictures = [String]()
	
    override func viewDidLoad() {
        super.viewDidLoad()
			
			let fm = FileManager.default
			let path = Bundle.main.resourcePath!
			let items = try! fm.contentsOfDirectory(atPath: path)
			
			for item in items {
				if item.hasPrefix("nssl") {
					pictures.append(item)
				}
			}

        // Do any additional setup after loading the view.
    }
       

}
