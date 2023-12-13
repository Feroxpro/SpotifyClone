//
//  TermsOfUseWebViewController.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 11/12/23.
//

import Foundation
import UIKit
import WebKit

class TermsWebViewController: UIViewController, WKNavigationDelegate {
    
    var screen: WebViewView?
    weak var coordinator:  MainCoordinator?
    var viewModel: NameAndTermOfUseViewModel?
    
    override func loadView() {
        screen = WebViewView()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.webView.navigationDelegate = self
        viewModel?.termsWebViewButton()
        loadTermsWebView()
    }
    
    func loadTermsWebView() {
    if let url = URL(string: "https://www.spotify.com/br-pt/legal/end-user-agreement/plain/") {
        let request = URLRequest(url: url)
        screen?.webView.load(request)
        }
    }
}
