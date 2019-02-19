//
//  QRWebViewController.swift
//  QRCodeReader
//
//  Created by LEONARDO CORTES on 2/18/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit
import Foundation
import WebKit

class QRWebViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet var webViewContainer: UIView!
    
    var webView: WKWebView!
    var url: URL!
    
    override func loadView() {
        //webView = WKWebView(frame: webViewContainer.bounds)
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = url
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }

}
