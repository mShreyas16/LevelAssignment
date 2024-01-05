//
//  ActivityRoutineViewController.swift
//  LevelAssignment
//
//  Created by Shreyas on 04/01/24.
//

import UIKit

class TableActivityRoutineViewcell: UITableViewCell {
    @IBOutlet weak var lbl_XP: UILabel!
    @IBOutlet weak var lbl_Duration: UILabel!
    @IBOutlet weak var lbl_Title: UILabel!
    @IBOutlet weak var lbl_SubTitle: UILabel!
    @IBOutlet weak var img_Banner: UIImageView!
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        
    }
}

class ActivityRoutineViewController: UIViewController {

    @IBOutlet weak var tableViewActivityRoutine: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableViewActivityRoutine.dataSource = self
        tableViewActivityRoutine.delegate = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



extension ActivityRoutineViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableActivityRoutineViewcell") as? TableActivityRoutineViewcell else { return UITableViewCell() }
        cell.contentView.layer.cornerRadius = 25
        cell.contentView.clipsToBounds = true
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        147
    }
    

    
}
