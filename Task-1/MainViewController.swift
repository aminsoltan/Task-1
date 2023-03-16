
import UIKit

class MainViewController: UIViewController  {

    let strArray: [String] = ["Spinach","lavender","Rosemary","Basil","Mint","Sage"]
   

    
    private let mainTable : UITableView =  {
        let table = UITableView(frame: .zero,style:.grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        return table
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
  
        
        view.addSubview(mainTable)
        
        
        mainTable.delegate = self
        mainTable.dataSource = self
        
        
   
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mainTable.frame=view.bounds
    }



}

extension MainViewController : UITableViewDelegate,UITableViewDataSource{

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return strArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = strArray[indexPath.item]
        cell.backgroundColor = .systemGreen
        cell.textLabel?.textColor = .white
       
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let navigationController = navigationController{
            let viewController = DetailsViewController()
            viewController.stringPassed = strArray[indexPath.item]
            navigationController.pushViewController(viewController, animated: true)
        }
    }
    
}

