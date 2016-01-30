//
//  ViewController.swift
//  UIProgrammingDemo
//
//  Created by Akkshay Khoslaa on 1/12/16.
//  Copyright © 2016 Akkshay Khoslaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var placeImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: 200))
    var blackImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.mainScreen().bounds.width, height: 200))
    var placeNameLabel = UILabel(frame: CGRect(x: 10, y: 80, width: UIScreen.mainScreen().bounds.width - 20, height: 40))
    var attractionsLabel = UILabel(frame: CGRect(x: 10, y: 10, width: 200, height: 30))
    var thingsLabel = UILabel(frame: CGRect(x: 10, y: 35, width: UIScreen.mainScreen().bounds.width - 20, height: 60))
    var pinButton = UIButton(frame: CGRect(x: 10, y: 10, width: (UIScreen.mainScreen().bounds.width - 40)/3, height: 40))
    var goButton = UIButton(frame: CGRect(x: 20 + (UIScreen.mainScreen().bounds.width - 40)/3, y: 10, width: (UIScreen.mainScreen().bounds.width - 40)/3, height: 40))
    var inviteFriendsButton = UIButton(frame: CGRect(x: 30 + 2 * (UIScreen.mainScreen().bounds.width - 40)/3, y: 10, width: (UIScreen.mainScreen().bounds.width - 40)/3, height: 40))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "demoCell")
        tableView.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1)
        
        placeImageView.image = UIImage(named: "seattle")
        placeImageView.contentMode = .ScaleAspectFill
        placeImageView.clipsToBounds = true
        blackImageView.image = UIImage(named: "black")
        blackImageView.alpha = 0.4
        blackImageView.clipsToBounds = true
        placeNameLabel.text = "Seattle"
        placeNameLabel.textAlignment = .Center
        placeNameLabel.textColor = UIColor.whiteColor()
        placeNameLabel.font = UIFont(name: "Helvetica", size: 30)
        attractionsLabel.text = "ATTRACTIONS"
        attractionsLabel.font = UIFont(name: "Helvetica", size: 15)
        thingsLabel.text = "Space needle, science center, aquarium, movie theatres, golfing, football, rocky beaches, community fairs, etc"
        thingsLabel.font = UIFont.systemFontOfSize(14)
        thingsLabel.numberOfLines = 3
        pinButton.setTitle("PIN", forState: .Normal)
        pinButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        pinButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 1, alpha: 1)
        pinButton.layer.cornerRadius = 5
        goButton.setTitle("GO", forState: .Normal)
        goButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        goButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 1, alpha: 1)
        goButton.layer.cornerRadius = 5
        inviteFriendsButton.setTitle("INVITE", forState: .Normal)
        inviteFriendsButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        inviteFriendsButton.backgroundColor = UIColor(red: 0.2, green: 0.6, blue: 1, alpha: 1)
        inviteFriendsButton.layer.cornerRadius = 5
        inviteFriendsButton.titleLabel?.adjustsFontSizeToFitWidth = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("demoCell", forIndexPath: indexPath)
        
        cell.backgroundColor = UIColor.clearColor()
        
        if indexPath.row == 0 {
            cell.addSubview(placeImageView)
            cell.addSubview(blackImageView)
            cell.addSubview(placeNameLabel)
            cell.bringSubviewToFront(placeNameLabel)
        } else if indexPath.row == 1 {
            cell.addSubview(attractionsLabel)
            cell.addSubview(thingsLabel)
        } else if indexPath.row == 2 {
            cell.addSubview(pinButton)
            cell.addSubview(goButton)
            cell.addSubview(inviteFriendsButton)
        }
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200
        } else if indexPath.row == 1 {
            return 100
        } else {
            return 60
        }
    }
    


}

