//
//  ViewControllerS.swift
//  Dasha
//
//  Created by Игорь Павлов on 24.05.2022.
//

import UIKit

class ViewControllerS: UIViewController {

    @IBOutlet weak var label: UILabel!
    var textOfLabel: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "image11.png")!)
        label.text = textOfLabel
        label.lineBreakMode = .byWordWrapping // or NSLineBreakMode.ByWordWrapping
        label.numberOfLines = 0
    }
    
    @IBAction func callPhone(_ sender: UIButton) {
        if let phoneCallURL:NSURL = NSURL(string:"tel://"+"\(79195169889)") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL as URL)) {
                application.openURL(phoneCallURL as URL);
            }
          }
        }
    }
    


