//
//  ViewController.swift
//  GoGoScratch
//
//  Created by suisho on 2014/08/21.
//  Copyright (c) 2014年 suisho. All rights reserved.
//

import UIKit

class ViewController: UIViewController , EAIntroDelegate{
                            
    @IBOutlet var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var rootView = self.view
        var pages = IntroViewController().generateIntroPages()
        
        var intro = EAIntroView(frame: rootView.frame, andPages: pages)
        intro.showInView(rootView, animateDuration: 0.3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


class IntroViewController : UIViewController{
    @IBOutlet var introView: EAIntroView!
    
    override func viewDidLoad() {
        introView.pages = generateIntroPages()
    }
    func generateIntroPages() -> [EAIntroPage]{
        var pages :[EAIntroPage] = []
        for i in 1...5{
            var page = EAIntroPage()
            page.title = String(i)
            
            page.desc = "らっちくんかわいい" + String(count: i, repeatedValue: Character("!"))
            pages.append(page)
        }
        return pages
    }
    
}