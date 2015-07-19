//
//  FirstViewController.swift
//  TabOnList
//
//  Created by appcamp on 19/07/15.
//  Copyright (c) 2015 marta. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ItemTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        ItemTableView.reloadData()
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return ItemsMgr.items.count
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Subtitle, reuseIdentifier:"CellId")
        
        cell.textLabel!.text = ItemsMgr.items[indexPath.row].name
        cell.detailTextLabel!.text = ItemsMgr.items[indexPath.row].details
        
        return cell
    }

}

