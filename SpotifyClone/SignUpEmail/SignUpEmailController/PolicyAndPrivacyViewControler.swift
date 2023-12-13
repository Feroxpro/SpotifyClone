//
//  PolicyAndPrivacyViewControler.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 13/12/23.
//

import WebKit
import UIKit

class PolicyAndPrivacyViewController: UIViewController, WKNavigationDelegate {
    
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
        viewModel?.privacyPoliceWebViewButton()
        loadprivacyPoliceWebView()
    }
    
    func loadprivacyPoliceWebView() {
    if let url = URL(string: "https://www.spotify.com/br-pt/legal/privacy-policy/plain/") {
        let request = URLRequest(url: url)
        screen?.webView.load(request)
        }
    }
}
