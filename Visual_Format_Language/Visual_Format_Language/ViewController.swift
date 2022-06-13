//
//  ViewController.swift
//  Visual_Format_Language
//
//  Created by Marc Moxey on 5/23/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        let label1 = UILabel() // show static text on the screen
        label1.translatesAutoresizingMaskIntoConstraints = false //make constrains by hand
        label1.backgroundColor = .red //unique background color
        label1.text = "These" // text shown in label
        label1.sizeToFit() //size to fix label
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        
        view.addSubview(label1) //show label on screen
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//        //
//        let viewsDictionary = ["label1" : label1, "label2" : label2, "label3" : label3, "label4" : label4, "label5" : label5]
//
//        for label in viewsDictionary.keys {
//            //main view
//            //add array of Constraints to our viewController view
//            //auto layout method convert VFL method in array of constraints
//            // horizontal layout
//            //edge of the view
//            //some label
//            //edge of the view
//
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
//
//            //V: - vertical
//            //| - end of the screen
//            //'-' - space
//            //(==72) size must be exactly 88 points
//            //(>=10) size must be greater than or equal 10 points
//
//            //easier to change size for label
//            let metrics = ["labelHeight": 88]
//
//            //@999 priority
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
//
            
        var previous: UILabel?
        
        //loop over all label give same width as main view and height of 88
        for label in [label1, label2, label3, label4, label5] {
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
            
            label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2, constant: -10).isActive = true
            
            // we have a previous label – create a height constraint
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            //set the previous label to be the current one, for the next loop iteration
            previous = label
        }
    }
}

