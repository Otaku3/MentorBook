//
//  ViewController.swift
//  MentorBook
//
//  Created by 大林拓実 on 2018/06/09.
//  Copyright © 2018年 TakumiObayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mentorArray.append(Mentor(name: "ビルド", course: "東都", imageName: "build.png"))
        mentorArray.append(Mentor(name: "クローズ", course: "東都", imageName: "cross-Z.png"))
        mentorArray.append(Mentor(name: "グリス", course: "北都", imageName: "gris.png"))
        
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func back() {
        index -= 1
        if index == -1 {
            index = 2
        }
        setUI()
    }
    
    @IBAction func next() {
        index += 1
        if index == 3 {
            index = 0
        }
        setUI()
    }


}

