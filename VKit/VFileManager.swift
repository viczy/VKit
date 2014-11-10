//
//  VFileManager.swift
//  VKit_Example
//
//  Created by Vic Zhou on 11/10/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import Foundation

class VFileManager: NSObject {
/**
* @brief 判断文件是否已存在
*
* Detailed
* @param[in]  文件路径
* @param[out] N/A
* @return  是否存在
* @note
*/

    class func fileExist(filepath:NSString) -> Bool{
        var fileManager = NSFileManager.defaultManager()
        return fileManager.fileExistsAtPath(filepath)
    }

/**
* @brief 删除文件
*
* Detailed
* @param[in]  文件路径
* @param[out] N/A
* @return  是否删除成功
* @note
*/

}