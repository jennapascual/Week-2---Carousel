//
//  TimelineViewController.swift
//  Carousel
//
//  Created by Jenna Pascual on 10/20/14.
//  Copyright (c) 2014 Jenna Pascual. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    override func viewDidLoad(){
        super.viewDidLoad()
        timelineScrollView.delegate = self
        timelineScrollView.contentSize = CGSize(width: 320, height: 1564)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
