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
        "Spinach":"Spinach (Spinacia oleracea) is a herbaceous plant whose leaves, green and arranged in rosette, are eaten raw or cooked.",
        "lavender":"Lavenders are small evergreen shrubs with gray-green hoary linear leaves. The purple flowers are sparsely arranged on spikes at the tips of long bare stalks and produce small nutlet fruits.",
        "Rosemary":"Rosemary is described as a woody, perennial herb that can become a bushy shrub. The leaves are evergreen and needlelike in shape, and they produce the essential oil that gives rosemary its characteristic scent.",
        "Basil":"Basil is an aromatic plant that encompasses scores of species of herb and shrub species belonging to the genus Ocimum L. (Lamiaceae). ",
        "Mint":"Mint or mentha belongs to the Lamiaceae family, which contains around 15 to 20 plant species, including peppermint and spearmint.",
        "Sage":"Sage is native to the Mediterranean region and is used fresh or dried as a flavouring in many foods, particularly in stuffings for poultry and pork and in sausages.",
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
        title.lineBreakMode = .byWordWrapping
        title.numberOfLines = 0
        title.frame = CGRect(x:50, y:300, width: 300, height: 200)
        return title
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = stringPassed
        view.addSubview(mainLabel)
        decriptionLabel.text = descriptionDic[stringPassed]
        view.addSubview(decriptionLabel)
        view.backgroundColor = .systemGreen
       
    }



}
