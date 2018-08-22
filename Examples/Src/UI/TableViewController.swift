//
//  ViewController.swift
//  TreeViewExample
//
//  Created by Anthony on 07.11.15.
//  Copyright © 2015 ReImpl. All rights reserved.
//

import UIKit
import TreeView

final class TableViewController: UIViewController {
	
	var treeModule: TreeModule!
	
	@IBOutlet weak var treeTable: TreeTable!
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		assert(treeModule != nil, "'treeModule' must be set by presenting view controller.")
		
		title = treeModule.name
		
		treeTable.dataSource = treeModule
		treeModule.registerCustomCells(with: tableView)
	}
}
