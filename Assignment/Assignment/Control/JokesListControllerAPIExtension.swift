//
//  DashboardAPIExtension.swift
//  Assignment
//
//  Created by mac on 2023-06-29.
//

import Foundation


// Calling API method here
extension JokesListController
{
    
    func getAPIData()
    {
        
        let wait = addWaitSpinner()
        
        let Url = String(format: "\(constants.newDashboardAPI)")
        guard let serviceUrl = URL(string: Url) else { return }
        
        var request = URLRequest(url: serviceUrl)
        
        request.httpMethod = "GET"
        
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        
        request.timeoutInterval = 5
        
        let session = URLSession.shared
        
        session.dataTask(with: request) { responseData, httpUrlResponse, error in
            
            self.removeWaitSpinner(waitView: wait)
            
            if (error == nil && responseData != nil && responseData?.count != 0)
            {
                let str = String(decoding: responseData!, as: UTF8.self)
                self.appendData(tempString: str)
            }
            
            DispatchQueue.main.async {
                self.tblView.reloadData()
            }
            
        }.resume()
    }
    
    
    // Append Data from API
    func appendData(tempString:String)
    {

        if self.dataArray.count <= 9
        {
            self.dataArray.append(tempString)
           
        } else
        {
            var secondLastIndex = self.dataArray.count - 2
            var lastIndex = self.dataArray.count - 1
            
            for i in 0..<self.dataArray.count
            {
               if i == self.dataArray.count - 1
                {
                   self.dataArray[0] = tempString
                } else
                {
                    self.dataArray[lastIndex] =  self.dataArray[secondLastIndex]
                    lastIndex -= 1
                    secondLastIndex -= 1
                }
            }
        }
    }
    
}
