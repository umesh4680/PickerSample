//
//  ViewController.swift
//  PickerSample
//
//  Created by Umesh on 15/02/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {


    @IBOutlet weak var myPicker: UIPickerView!
    
    var imageView : UIImageView?
    var label : UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        myPicker.delegate = self
        myPicker.dataSource = self
    }

    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "Cell"
    }
    
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        
////        let refreshView = Bundle.main.loadNibNamed("View", owner: self, options: nil)
////        let customView = refreshView?[0] as! UIView
////        return customView
//        
////        let viewObj = CustomView()
////        return viewObj
//    }
 

    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
      //  let viewObj = CustomView()
        
//        let viewObj = Bundle.main.loadNibNamed("View", owner: nil, options: nil)?.first as! CustomView
//    //    loadView(fromNib: "View", withType: CustomView.self)
//        return viewObj
        
        let refreshView = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)
        
        let customView = refreshView?[0] as! UIView
        
     //   customView.frame = view?.bounds
        
        customView.backgroundColor = UIColor.clear
        
         return customView
        
        
    }
 
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 45
        
    }
}
 
 

