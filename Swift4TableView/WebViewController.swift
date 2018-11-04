//
//  WebViewController.swift
//  Swift4tableView
//
//  Created by taiki on 2018/11/04.
//  Copyright © 2018年 taiki. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate, WKUIDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.uiDelegate = self
        webView.navigationDelegate = self
        
        let webUrl = URL(string: "https://www.jalan.net/yad358282/photo/?screenId=UWW3001&stayDay=&yadNo=358282&maxPrice=999999&dateUndecided=1&rootCd=7701&stayMonth=&stayYear=&contHideFlg=1&minPrice=0&callbackHistFlg=1&smlCd=211402&distCd=01")!
        let req = URLRequest(url: webUrl)
        webView.load(req)
        
        // Do any additional setup after loading the view.
    }
    
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
        // インジケータ(実機の左上でグルグルするアニメーション)の表示を開始する
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    // webサイトの読み込み完了時に起動
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        // インジケータの表示を終了する
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    
    
    @IBAction func modoru(_ sender: UIButton) {
         self.webView.goBack()
    }
    
    @IBAction func susumu(_ sender: UIButton) {
         self.webView.goForward()
    }
 
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
