//
//  CreateClassViewController.swift
//  AnywhereFitness
//
//  Created by Niranjan Kumar on 11/18/19.
//  Copyright © 2019 NarJesse. All rights reserved.
//

import UIKit

class CreateClassViewController: UIViewController {

    
    @IBOutlet weak var classNameTextField: UITextField!
    @IBOutlet weak var yourNameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var intensityTextField: UITextField!
    @IBOutlet weak var durationTextField: UITextField!
    @IBOutlet weak var classSizeTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var date: UIDatePicker!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTapped(_ sender: Any) {
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
