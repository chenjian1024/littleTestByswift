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
        let finshed = {(models:[testModel])->() in
           self.cells = models
            self.tableView.reloadData()
        
        }
        loadData(finshed)
        
    }
   
    
   //MARK:数据源方法
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:testTableViewCell = tableView.dequeueReusableCellWithIdentifier("test", forIndexPath: indexPath) as! testTableViewCell
        cell.model = cells![indexPath.row]
        return cell
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1 ;
    }
   
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cells?.count ?? 0;
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController {
    //MARK:初始化加载数据
    func loadData(finlished:([testModel])->()) -> Void {
        dispatch_async(dispatch_get_global_queue(0, 0)) {
            //print("加载数据中……")
           // NSThread.sleepForTimeInterval(2)
            
            var arr:[testModel] = [testModel]()
            for i in 1...80{
                var dict:[String:AnyObject] = [String:AnyObject]()
                let name:String = "黑马第\(i)期"
                let age:String = "\(random()%80)"
                dict["name"] = name
                dict["age"] = age
                arr.append(testModel(dict:dict))
            }
            print(arr)
            dispatch_sync(dispatch_get_main_queue(), { 
                finlished(arr)
            })
        }

        }
        
       }
