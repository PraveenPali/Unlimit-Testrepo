//
//  DashboardTableViewCell.swift
//  Assignment
//
//  Created by mac on 2023-06-28.
//

import UIKit

class JokesListTableViewCell: UITableViewCell {

    let lblJokes = UILabel()
    let viewBG = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        viewBG.translatesAutoresizingMaskIntoConstraints = false
        viewBG.layer.cornerRadius = 12
        contentView.addSubview(viewBG)
        
        viewBG.leftAnchor.constraint(equalTo: contentView.leftAnchor,  constant: 20).isActive = true
        viewBG.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20).isActive = true
        viewBG.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20).isActive = true
        viewBG.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
        viewBG.heightAnchor.constraint(greaterThanOrEqualToConstant: 60).isActive = true
        viewBG.backgroundColor = .systemGreen
        
        lblJokes.translatesAutoresizingMaskIntoConstraints = false
        lblJokes.font = UIFont.systemFont(ofSize: 16)
        lblJokes.textColor = .white
        lblJokes.numberOfLines = 10
        viewBG.addSubview(lblJokes)
        
        lblJokes.leftAnchor.constraint(equalTo: viewBG.leftAnchor,  constant: 10).isActive = true
        lblJokes.rightAnchor.constraint(equalTo: viewBG.rightAnchor, constant: -10).isActive = true
        lblJokes.topAnchor.constraint(equalTo: viewBG.topAnchor, constant: 10).isActive = true
        lblJokes.bottomAnchor.constraint(equalTo: viewBG.bottomAnchor, constant: 10).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

