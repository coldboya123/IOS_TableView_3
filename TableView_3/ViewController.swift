//
//  ViewController.swift
//  TableView_3
//
//  Created by Nguyen Duc Huy on 5/31/21.
//  Copyright © 2021 Nguyen Duc Huy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var FoodArr:[Food]?
    var SVArr:[String]?

    @IBOutlet weak var tbv_Food: UITableView!
    @IBOutlet weak var tbv_SV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        FoodArr = [ Food(id: 0, img: "1", name: "Bun bo Hue", price: 30000),
        Food(id: 1, img: "4", name: "Bun bo Hue", price: 30000),
        Food(id: 2, img: "3", name: "Bun bo Hue", price: 30000),
        Food(id: 3, img: "4", name: "Bun bo Hue", price: 30000),
        Food(id: 4, img: "5", name: "Bun bo Hue", price: 30000)]
        
        SVArr = ["Size nho", "Size vua", "Size lon"]
        
        tbv_Food.dataSource = self
        tbv_Food.delegate = self
        tbv_SV.dataSource = self
        tbv_SV.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 0 {
            return FoodArr!.count
        }
        return SVArr!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 0 {
            let cell = tbv_Food.dequeueReusableCell(withIdentifier: "FOOD") as! Food_TableViewCell
            cell.img_food.image = UIImage(named: FoodArr![indexPath.row].IMG)
            cell.lbl_name.text = FoodArr![indexPath.row].NAME
            cell.lbl_price.text = String(FoodArr![indexPath.row].PRICE)
            cell.contentView.backgroundColor = .black
            cell.lbl_name.textColor = .darkGray
            cell.lbl_price.textColor = .lightGray
            return cell
        }
        else{
            let cell = tbv_SV.dequeueReusableCell(withIdentifier: "SV") as! SV_TableViewCell
            cell.lbl_SVname.text = SVArr![indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height/2/2
    }

}

