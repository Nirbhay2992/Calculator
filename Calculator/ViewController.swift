//
//  ViewController.swift
//  Calculator
//
//  Created by Nirbhay Singh on 09/03/24.
//

import UIKit
import AppCenterCrashes
import AppCenter
import AppCenterAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppCenter.configure(withAppSecret: AppCenterKey)
        if AppCenter.isConfigured {
            AppCenter.startService(Analytics.self)
            AppCenter.startService(Crashes.self)
        }
        
    }


}

