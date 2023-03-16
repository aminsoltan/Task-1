//
//  DetailsViewController.swift
//  Task-1
//
//  Created by seyedali hamedi on 3/16/23.
//

import UIKit

class DetailsViewController: UIViewController {

    var stringPassed = ""
    let descriptionDic : [String:String] = [
        "baboone":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        "lavender":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        "sarakhs":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        "kaaj":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        "rose":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
        "tomato":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
    ]
    
    private let mainLabel : UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 52,weight: .semibold)
        title.textColor = .white
        title.lineBreakMode = .byWordWrapping
        title.numberOfLines = 0
        title.frame = CGRect(x: 50, y: 150, width: 250, height: 100)
        return title
    }()
    
    private let decriptionLabel : UILabel = {
        let title = UILabel()
        title.font = .systemFont(ofSize: 24,weight: .semibold)
        title.textColor = UIColor.white.withAlphaComponent(0.9)
        title.lineBreakMode = .byCharWrapping
        title.numberOfLines = 0
        title.frame = CGRect(x:100, y:300, width: 200, height: 200)
        return title
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        mainLabel.text = stringPassed
        view.addSubview(mainLabel)
        decriptionLabel.text = descriptionDic[stringPassed]
        view.addSubview(decriptionLabel)
        
       
    }



}
