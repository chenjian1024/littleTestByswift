//
//  ViewController.swift
//  littleTestByswift
//
//  Created by chenjian on 16/7/26.
//  Copyright © 2016年 chenjian. All rights reserved.
//

import UIKit
//继承自UItableViewController
class ViewController: UITableViewController {

    var cells:[testModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //MARK:初始化加载数据
    func loadData() -> Void {
        
    }
    
   //MARK:数据源方法
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:testTableViewCell = tableView.dequeueReusableCellWithIdentifier("test", forIndexPath: indexPath) as! testTableViewCell
        
        return cell
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0 ;
    }
   
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

