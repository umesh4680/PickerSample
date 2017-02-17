//
//  CustomView.swift
//  PickerSample
//
//  Created by Umesh on 16/02/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

class CustomView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    let nibName = "View"
    var view : UIView!
    
    
    // Initialization called from XIB
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        xibSetUp()
        
      //  self.commanInitialization()
    }
    
    
    // Initialization called from Code
     override init(frame: CGRect) {
        super.init(frame: frame)
//        xibSetUp()
        
      //  self.commanInitialization()

    }
    
    
    
    
    
    
   
    
    func loadViewFromNib() -> UIView {
        // grabs the appropriate bundle
        
//        let bundle = Bundle(for: type(of: self))
//        
//        let nib = UINib(nibName: nibName, bundle: bundle)
//        
//        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
//        return view
//        
        
      //  let nib1 = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
//        let customView = nib1?[0] as! UIView
//        return customView
        
        
        
        Bundle(for: CustomView.self).loadNibNamed("View.xib", owner: self, options: nil)
        
        let content = view!
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
       // self.addSubview(content)
        
        return content
        
    }
    
    
    
    func xibSetUp() {
        view = loadViewFromNib()
        view.frame = self.bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
    }

    
    
    func commanInitialization()
    {
        
        /*
        
        let view = Bundle.main.loadNibNamed("View", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
 */

        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = self.bounds
        self.addSubview(view)
        
    }
    
}
