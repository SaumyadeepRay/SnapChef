//
//  ViewController.swift
//  SnapChef
//
//  Created by Saumyadeep Ray on 28/03/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
              
    @IBOutlet weak var tableView: UITableView!
    
    var ingredients: [Ingredient] = sampleIngredients;
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IngredientCell", for: indexPath)
        
        cell.textLabel?.text = ingredients[indexPath.row].name
        cell.detailTextLabel?.text = ingredients[indexPath.row].quantity
        
        let size = CGSize(width: 40, height: 40)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let emoji = ingredients[indexPath.row].emoji
        (emoji as NSString).draw(in: CGRect(origin: .zero, size: size))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        if let safeImage = image {
            cell.imageView?.image = safeImage
        }
        cell.imageView?.image = image
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "SnapChef 🚀"
        tableView.dataSource = self
        tableView.delegate = self
    }


}

