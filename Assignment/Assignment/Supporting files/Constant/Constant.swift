//
//  Constant.swift
//  Assignment
//
//  Created by Never Mind on 27/06/23.
//

import Foundation
import UIKit


struct constants {
    static let newDashboardAPI = "https://geek-jokes.sameerkumar.website/api"
}



// Creating loader here
public typealias WaitView = (first: UIView, second: UIView)
public typealias WaitViewForMeter = (first: UIView, second: UIView, third:UIView)


public extension UIViewController {
    
    func displayMessage(msg:String){
        self.displayMessage(title: nil, msg: msg)
    }
    
    func displayMessage(title: String?, msg: String?, callback:(()->(Void))? = nil) {
        
        let alertView:UIAlertController!
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            alertView = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        }
        else{
            alertView = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        }
        
        let alertAction = UIAlertAction(title: "OK", style: .cancel, handler: { _ in
            alertView.dismiss(animated: true, completion: nil)
            callback?()
        })
        alertView.addAction(alertAction)
        present(alertView, animated: true, completion: nil)
    }
    
    
    func addWaitSpinner()->WaitView {
        
        let backView = UIView(frame: view.bounds)
        let indicatorView = UIActivityIndicatorView(style: .large)
        //UIActivityIndicatorView(style: .w)
        indicatorView.color = UIColor.init(named: "#000000")
        view.addSubview(backView)
        view.bringSubviewToFront(backView)
        backView.addSubview(indicatorView)
        indicatorView.center = backView.center
        backView.bringSubviewToFront(indicatorView)
        indicatorView.startAnimating()
        backView.alpha = 0.0
        backView.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        
        UIView.animate(withDuration: 0.25, animations: {
            backView.alpha = 1.0
        })
        
        return (backView, indicatorView)
    }
    
    func removeWaitSpinner(waitView: WaitView){
        UIView.animate(withDuration: 0.25, animations: {
            waitView.first.alpha = 0.0
        }, completion: { _ in
            waitView.second.removeFromSuperview()
            waitView.first.removeFromSuperview()
        })
    }
    
    
    // Loader for meter
    func addWaitSpinnerForMeter()->WaitViewForMeter {
        
        let backView = UIView(frame: view.bounds)
        view.addSubview(backView)
        view.bringSubviewToFront(backView)
        
        let backViewforMeter = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        backViewforMeter.backgroundColor = .white
        backViewforMeter.layer.cornerRadius = 8

        backView.addSubview(backViewforMeter)
        backView.bringSubviewToFront(backViewforMeter)
        backViewforMeter.center = backView.center
        
        let indicatorView = UIActivityIndicatorView(style: .large)

        indicatorView.color = UIColor.init(named: "#000000")

        backViewforMeter.addSubview(indicatorView)
        indicatorView.center = backViewforMeter.center
        backViewforMeter.bringSubviewToFront(indicatorView)
        
        indicatorView.startAnimating()
        backView.alpha = 0.0
        backView.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        
        UIView.animate(withDuration: 0.25, animations: {
            backView.alpha = 1.0
        })
        
        return (backView, indicatorView, backViewforMeter )
    }
    
    func removeWaitSpinnerForMeter(waitView: WaitViewForMeter){
        UIView.animate(withDuration: 0.25, animations: {
            waitView.first.alpha = 0.0
        }, completion: { _ in
            waitView.second.removeFromSuperview()
            waitView.first.removeFromSuperview()
        })
    }

}


