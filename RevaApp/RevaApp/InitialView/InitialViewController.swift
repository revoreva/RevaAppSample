//
//  InitialViewController.swift
//  RevaApp
//
//  Created by Reva Yoga Pradana on 16/07/21.
//

import UIKit

class InitialViewController: UIViewController {
    @IBOutlet weak var environmentLabel: UILabel!
    
    init() {
        super.init(nibName: "InitialViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
}

private extension InitialViewController {
    func setupView() {
        view.backgroundColor = .white
        title = "Initial VC"
        
        #if STAGE
        let env = "Stage"
        #else
        let env = "Production"
        #endif
        environmentLabel.text! += env
    }
}

