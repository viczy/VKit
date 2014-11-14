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

    class func fileExist(path:NSString) -> Bool{
        var fileManager = NSFileManager.defaultManager()
        return fileManager.fileExistsAtPath(path)
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
    class func removeFile(path:NSString) -> Bool {
        var error:NSError?
        var fileManager = NSFileManager.defaultManager()
        if (fileManager.fileExistsAtPath(path)) {
            fileManager.removeItemAtPath(path, error:&error)
        }

        if let myError = error {
            return false
        }

        return true
    }

/**
* @brief 创建文件
*
* Detailed
* @param[in]  文件路径
* @param[out] N/A
* @return  是否创建成功
* @note
*/

    class func makeDir(path:NSString) -> Bool {
        var error:NSError?
        var fileManager = NSFileManager.defaultManager()
        fileManager.createDirectoryAtPath(path, withIntermediateDirectories:true, attributes:nil, error:&error)
        if let myError = error {
            return false
        }
        return true
    }

/**
* @brief 获取documents路径
*
* Detailed
* @param[in]  N/A
* @param[out] N/A
* @return  documents路径
* @note
*/





}