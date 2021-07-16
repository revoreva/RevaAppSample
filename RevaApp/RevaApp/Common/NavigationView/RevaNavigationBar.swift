//
//  RevaNavigationBar.swift
//  RevaApp
//
//  Created by Reva Yoga Pradana on 16/07/21.
//

import UIKit

class RevaNavigationBar: UINavigationBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
}

// MARK: Private
private extension RevaNavigationBar {
    func setupView() {
        barStyle = .black
        isTranslucent = false
        tintColor = .white
        barTintColor = .brown
        titleTextAttributes = [
            .font: UIFont.boldSystemFont(ofSize: 12),
            .foregroundColor: UIColor.white
        ]
        setBackgroundImage(UIImage(), for: .default)
    }
}
