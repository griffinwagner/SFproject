//
//  BottomSheetViewController.swift
//  Project02
//
//  Created by Griffin Wagner on 1/11/20.
//  Copyright © 2020 Synappse. All rights reserved.
//

import UIKit



class BottomSheetViewController: UIView {
    
    func prepareBackgroundView(){
        let blurEffect = UIBlurEffect.init(style: .Dark)
        let visualEffect = UIVisualEffectView.init(effect: blurEffect)
        let bluredView = UIVisualEffectView.init(effect: blurEffect)
        bluredView.contentView.addSubview(visualEffect)
        
        visualEffect.frame = UIScreen.mainScreen().bounds
        bluredView.frame = UIScreen.mainScreen().bounds
        
        view.insertSubview(bluredView, atIndex: 0)
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        prepareBackgroundView()
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
