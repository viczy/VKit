//
//  ExampleController.swift
//  VKit_Example
//
//  Created by Vic Zhou on 11/10/14.
//  Copyright (c) 2014 everycode. All rights reserved.
//

import UIKit

class ExampleController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    // MARK: Properties
    var listBlogs = []

    // MARK: View Life Cycle
    override func viewDidLoad()  {
        super.viewDidLoad()
    }

    // MARK: UITableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 1;
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "ExampleCell"
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as? UITableViewCell

        if let myCell = cell {
            myCell.textLabel?.textColor = UIColor.titleColor()
            myCell.textLabel?.text = "UIColor"
        }

        return cell!
    }

    // MARK: UITableViewDelegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

