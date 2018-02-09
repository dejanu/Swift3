//
//  ViewController.swift
//  Course62ScrollView
//
//  Created by OLPS RO TV on 06/02/2018.
//  Copyright © 2018 OLPS RO TV. All rights reserved.
//

import UIKit

class HomeScrollViewController: UIViewController, UIScrollViewDelegate {
    
    //InterfaceBuilder weak the owner of the outlet is not the same as the owner of the view
    //the ViewController does not own the SomeLabel the ViewController's View does it
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //call the scoll view
        initScrollView()
    }

    //create the scroll view
    func initScrollView(){
       
        //the outlet was created and the UIScrollView named scrollView is accesible
        self.scrollView.backgroundColor = UIColor.cyan
        
        //prevent half scrolling
        self.scrollView.isPagingEnabled = true
        
        //DELEGATE patern the self controller delegate the scroll
        self.scrollView.delegate = self
        
        //bounds = stars from {0,0,width,height} and frame{0,20,width,height} is relative to the superView
        let scrollWidth =  self.scrollView.bounds.size.width
        let scrollHeight = self.scrollView.bounds.size.height
        
        
        let imageColelction = ["one","two","three"]
        
        //image gallery
        for i in 0...2{
            
            //image container
            let imageView = UIImageView(frame:
                CGRect(x: 0,
                       y: CGFloat(i) * scrollHeight,
                       width: scrollWidth,
                       height: scrollHeight))
            
        let imageName = imageColelction[i]
        //image
        imageView.image = UIImage.init(named: imageName)
        
        //keep the aspect ratio of the image asset
        imageView.contentMode = .scaleAspectFit
        
        //add imageView
        self.scrollView.addSubview(imageView)
            
        
    //endfor
        }
        
        //add the posibility to scroll
        self.scrollView.contentSize = CGSize(width: scrollWidth, height: scrollHeight * 3)
        
    }

//end initScroll
}

