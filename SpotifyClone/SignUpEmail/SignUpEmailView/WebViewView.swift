//
//  TermsOfUseWebViewView.swift
//  SpotifyClone
//
//  Created by Felipe Henrique Domingos on 11/12/23.
//

import Foundation
import WebKit
import SnapKit

class WebViewView: BaseView {
    
    lazy var webView: WKWebView = {
        let web = WKWebView()
        return web
    }()
    
    override func addSubviews() {
        addSubview(webView)
    }
    
    override func configureConstraints() {
        webView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
