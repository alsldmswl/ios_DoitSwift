//
//  ViewController.swift
//  PageControl
//
//  Created by eun-ji on 2023/01/11.
//

import UIKit

var images = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg", "10.jpg"]

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
    }


    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
}

