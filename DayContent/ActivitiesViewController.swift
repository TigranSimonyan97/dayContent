//
//  ActivitiesViewController.swift
//  DayContent
//
//  Created by Tigran Simonyan (LuckyAds) on 7/7/20.
//  Copyright © 2020 Tigran Simonyan (LuckyAds). All rights reserved.
//

import UIKit

class ActivitiesViewController: UIViewController {

    private let opportunityViewHeight = 120
    
    @IBOutlet weak var activitiesTableView: UITableView!
    @IBOutlet weak var goToTurboButton: UIButton!
    
    @IBOutlet weak var opportunityViewTopContraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    //MARK: - Configure UI
    
    private func configureUI() {
        configureActivitiesTableView()
        configureGoToTurboButton()
    }
    
    private func configureActivitiesTableView() {
        activitiesTableView.delegate = self
        activitiesTableView.dataSource = self
        activitiesTableView.register(ActivityItemCell.self, forCellReuseIdentifier: ActivityItemCell.reuseId)
    }
    
    private func configureGoToTurboButton() {
        goToTurboButton.layer.borderColor = UIColor.white.cgColor
        goToTurboButton.layer.borderWidth = 1.0
        goToTurboButton.layer.cornerRadius = 5.0
    }
    
    //MARK: - Actions
    @IBAction func goTuTurboButtonTouchUp(_ sender: UIButton) {
    }
    
}

extension ActivitiesViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ActivityItemCell.reuseId, for: indexPath) as! ActivityItemCell
        
        return cell
    }
}
