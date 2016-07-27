//
//  testModel.swift
//  littleTestByswift
//
//  Created by chenjian on 16/7/27.
//  Copyright © 2016年 chenjian. All rights reserved.
//

import UIKit

class testModel: NSObject {
    var name:String?
    var age:String?
    
    init(dict:[String:AnyObject]) {
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    //MARK: 处理字典中出现模型中没有定义的key
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        
    }
    
    override var description: String{
    return "\(name ?? "0")--\(age ?? "1")"
    }
}
