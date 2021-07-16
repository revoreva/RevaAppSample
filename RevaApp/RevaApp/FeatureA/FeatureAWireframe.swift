//
//  FeatureAWireframe.swift
//  RevaApp
//
//  Created by Reva Yoga Pradana on 16/07/21.
//

import UIKit

struct FeatureAWireframe {
    func show(from sourceNVC: UINavigationController?) {
        let destinationVC = createVC()
        sourceNVC?.pushViewController(destinationVC, animated: true)
    }
}

private extension FeatureAWireframe {
    func createVC() -> FeatureAViewController {
        let vc = FeatureAViewController()
        return vc
    }
}
