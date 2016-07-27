//
//  detailController.swift
//  littleTestByswift
//
//  Created by chenjian on 16/7/27.
//  Copyright © 2016年 chenjian. All rights reserved.
//

import UIKit

class detailController: UIViewController {

    @IBOutlet weak var ageTextFiled: UITextField?
    @IBOutlet weak var nameTextFiled: UITextField?
    var model:testModel?
    var callBcack:(()->())?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextFiled?.text = model?.name
        ageTextFiled?.text = model?.age
        
        // Do any additional setup after loading the view.
    }

    @IBAction func save(sender: AnyObject) {
        model!.name = nameTextFiled!.text
        model!.age = ageTextFiled!.text
        callBcack?()
        navigationController?.popViewControllerAnimated(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
