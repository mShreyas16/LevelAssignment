//
//  MustDoGoalsViewController.swift
//  LevelAssignment
//
//  Created by Shreyas on 03/01/24.
//

import UIKit

class CollectionViewMustDoCell : UICollectionViewCell {
    
//    @IBOutlet weak var lbl_Duration: UILabel!
//    @IBOutlet weak var lbl_XP: UILabel!
//
//    @IBOutlet weak var lbl_title: UILabel!
//    @IBOutlet weak var lbl_Subtitle: UILabel!
//    @IBOutlet weak var lbl_CoachName: UILabel!
//    @IBOutlet weak var img_banner: UIImageView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}

class MustDoGoalsViewController: UIViewController {

    @IBOutlet weak var collectionViewMustDo: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        collectionViewMustDo.dataSource = self
        collectionViewMustDo.delegate = self
    }
    

}


extension MustDoGoalsViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewMustDoCell", for: indexPath) as? CollectionViewMustDoCell else { return UICollectionViewCell() }
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.clipsToBounds = true
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: self.view.frame.width - 20, height: 200)
    }
    
    
}
