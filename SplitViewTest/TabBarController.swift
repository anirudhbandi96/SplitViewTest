//
//  TabBarController.swift
//  SplitViewTest
//
//  Created by Bandi, Anirudh on 11/19/20.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        This works fine 🤷‍♂️
        let splitViewController = SplitViewController()
        splitViewController.viewControllers = [ UINavigationController(rootViewController: PrimaryViewController()) , UINavigationController(rootViewController: SecondaryViewController())]
        
//        let splitViewController = SplitViewController(style: .tripleColumn)
//        splitViewController.setViewController(UINavigationController(rootViewController: PrimaryViewController()), for: .primary)
//        splitViewController.setViewController(UINavigationController(rootViewController: SecondViewController()), for: .secondary)
//        splitViewController.setViewController(UINavigationController(rootViewController: SupplementaryViewController()), for: .supplementary)
//        splitViewController.show(.primary)
//        splitViewController.show(.secondary)
//        splitViewController.show(.supplementary)
        
        splitViewController.title = "First"
        
        let secondViewController = SecondViewController()
        secondViewController.title = "Second"
        
        setViewControllers([
            splitViewController,
            secondViewController
        ], animated: false)
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
