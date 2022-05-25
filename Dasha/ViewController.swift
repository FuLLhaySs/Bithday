//
//  ViewController.swift
//  Dasha
//
//  Created by Игорь Павлов on 24.05.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "image11.png")!)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinatioVC: ViewControllerS = segue.destination as! ViewControllerS
        destinatioVC.textOfLabel = textField.text!
    }

    

    
    
    }


