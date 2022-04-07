//
//  TabBarViewController.swift
//  ContactListApp
//
//  Created by Gregory Odintsov on 05.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! ContactListViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
    

}
