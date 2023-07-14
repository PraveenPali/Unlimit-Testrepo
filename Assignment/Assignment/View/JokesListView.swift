//
//  JokesListView.swift
//  Assignment
//
//  Created by Dhanuka on 11/07/23.
//

import UIKit

extension JokesListController {

    
    func creatingView()
    {
        lblTitle.translatesAutoresizingMaskIntoConstraints = false
        lblTitle.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        lblTitle.textColor = .white
        lblTitle.numberOfLines = 10
        view.addSubview(lblTitle)
        
        lblTitle.leftAnchor.constraint(equalTo: view.leftAnchor,  constant: 10).isActive = true
        lblTitle.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        lblTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        lblTitle.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        lblTitle.text = "JOKES"
        
        
        tblView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tblView)
        
        tblView.leftAnchor.constraint(equalTo: view.leftAnchor,  constant: 0).isActive = true
        tblView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tblView.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 5).isActive = true
        tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
    
   
   
}
