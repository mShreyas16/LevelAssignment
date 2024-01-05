//
//  ViewController.swift
//  LevelAssignment
//
//  Created by Shreyas on 03/01/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view_Container1: UIView!
    
    @IBOutlet weak var viewContainerActivityRoutine: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        
        let mustView = storyboard?.instantiateViewController(withIdentifier: MustDoGoalsViewController.identifier()) as! MustDoGoalsViewController
        view_Container1.addSubview(mustView.view)
        addChild(mustView)
        
        addLTTBConst(child: mustView.view, parent: view_Container1)
        didMove(toParent: mustView)
        
        
        
        let activityRoutineVC = storyboard?.instantiateViewController(withIdentifier: ActivityRoutineViewController.identifier()) as! ActivityRoutineViewController
        
        
        viewContainerActivityRoutine.addSubview(activityRoutineVC.view)
        
        addLTTBConst(child: activityRoutineVC.view, parent: viewContainerActivityRoutine)
        addChild(activityRoutineVC)
        didMove(toParent: activityRoutineVC)
        
    }
    
    
    func addLTTBConst(child: UIView, parent: UIView) {
        
        child.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: child, attribute: .leading, relatedBy: .equal, toItem: parent, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: child, attribute: .trailing, relatedBy: .equal, toItem: parent, attribute: .trailing, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: child, attribute: .top, relatedBy: .equal, toItem: parent, attribute: .top, multiplier: 1, constant: 0).isActive = true
        
        NSLayoutConstraint(item: child, attribute: .bottom, relatedBy: .equal, toItem: parent, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
    
    }

    
    
    @IBAction func exploreButtonTapped(_ sender: Any) {
        
    }
    
}



extension UIViewController {
    
    static func identifier() -> String {
        return "\(self)"
    }
}
