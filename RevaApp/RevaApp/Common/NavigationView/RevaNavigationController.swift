//
//  RevaNavigationController.swift
//  RevaApp
//
//  Created by Reva Yoga Pradana on 16/07/21.
//

import Foundation
import UIKit

class RevaNavigationController: UINavigationController {
    public override init(rootViewController: UIViewController) {
        super.init(navigationBarClass: RevaNavigationBar.self, toolbarClass: nil)
        self.viewControllers = [rootViewController]
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
