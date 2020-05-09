//
//  CourseViewController.swift
//  FirstApp
//
//  Created by venkata sudhakar on 09/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController {
    let basic = ["variables"]
    let advanced = ["maps"]
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var courseTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        courseTable.dataSource = self
        // Do any additional setup after loading the view.
    }
    @IBAction func actionForSegment(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            self.courseTable.reloadData()
        }
        else{
            self.courseTable.reloadData()
        }
    }
}

extension CourseViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.segment.selectedSegmentIndex == 0 {
            return basic.count
        }else{
            return advanced.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if self.segment.selectedSegmentIndex == 0 {
            cell.textLabel?.text = basic[indexPath.row]
        }
        else{
            cell.textLabel?.text = advanced[indexPath.row]
        }
        return cell
    }
    
    
    
    
    
    
}
