//
//  ViewController.swift
//  viewstringint
//
//  Created by apple on 7/27/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
@IBOutlet weak var table: UITableView!
    
    struct sunset{
        let title:String
        let imagename:String
    }
    
    let data: [sunset] = [sunset(title: "morning run", imagename: "img1"),
    sunset(title: "evening sunset", imagename: "img2"),
    sunset(title: "noon", imagename: "img3"),
    sunset(title: "summer", imagename: "img4" ),
    sunset(title: "day", imagename: "img5"),
    sunset(title: "night", imagename: "img6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customtableviewcellTableViewCell
        cell.label.text = sunset.title
        cell.iconImageview.image = UIImage(named: sunset.imagename)
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 140
    }

}


