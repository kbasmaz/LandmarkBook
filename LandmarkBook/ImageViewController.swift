//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Kamil Basmaz on 29.11.2017.
//  Copyright © 2017 Kamil Basmaz. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var labelname: UILabel!
    var landmarkName = ""
    var landmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageview.image = landmarkImage
        labelname.text = landmarkName
    }

   

}
