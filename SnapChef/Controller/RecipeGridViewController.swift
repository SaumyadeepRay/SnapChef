//
//  ViewController.swift
//  SnapChef
//
//  Created by Saumyadeep Ray on 28/03/26.
//

import UIKit

class RecipeGridViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let recipeCellID = "RecipeCollectionViewCell"
    
    var recipies: [Recipe] = sampleRecipes;
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: recipeCellID, for: indexPath) as! RecipeCollectionViewCell
        
        let recipiesData = recipies[indexPath.item]
        cell.recipeImageView.image = UIImage(named: recipiesData.imageName)
        cell.recipeNameLabel.text = recipiesData.name
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 175, height: 240)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "SnapChef 🚀"
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Create a fresh flow layout from scratch (most reliable)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 175, height: 240)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        layout.scrollDirection = .vertical
        
        // Replace whatever the storyboard had with our explicit layout
        collectionView.collectionViewLayout = layout
    }
}

