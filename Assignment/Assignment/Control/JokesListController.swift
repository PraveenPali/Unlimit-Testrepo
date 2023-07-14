//
//  DashboardVC.swift
//  Assignment
//
//  Created by mac on 2023-06-26.
//

import UIKit
import Kingfisher


class JokesListController: UIViewController {
    
    // Declare IBOutlet here
    let tblView = UITableView()
    let lblTitle = UILabel()
    
    var dataArray = [String]()
    
    var counter = 1
    var  timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
        self.creatingView()
    }
    
    
    func setupView()
    {
        
        tblView.register(JokesListTableViewCell.self, forCellReuseIdentifier: "JokesListTableViewCell")
        
        tblView.delegate = self
        tblView.dataSource = self
        
        tblView.separatorStyle = .none
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
    }
    
    @objc func onTimerFires()
    {
        counter += 1
        
        if counter >= 11
        {
            counter = 11
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
        }

        self.getAPIData()
    }
    
}


// Mark:- Declare Delegate and Data source here
extension JokesListController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "JokesListTableViewCell", for: indexPath) as! JokesListTableViewCell
        cell.lblJokes.text = "\(dataArray[indexPath.row])"
        return cell
    }
    
}
