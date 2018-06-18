//
//  ViewController.swift
//  WKWebView_Sample
//
//  Created by kazua on 2018/06/17.
//  Copyright © 2018年 kazua. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var wkWebView: WKWebView!
    @IBOutlet weak var toolbar: UIToolbar!
    
    override func loadView() {
        super.loadView()
        
        // uiDelegateなので間違えないように
        wkWebView.uiDelegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // スワイプでbackとfowardできるように
        wkWebView.allowsBackForwardNavigationGestures = true
        
        let myURL = URL(string: "https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        wkWebView.load(myRequest)
    }
    
    @IBAction func goBackButton(_ sender: Any) {
        wkWebView.goBack()
    }
    
    @IBAction func goFowardButton(_ sender: Any) {
        wkWebView.goForward()
    }
    
    @IBAction func refreshButton(_ sender: Any) {
        wkWebView.reload()
    }
}
