//
//  ViewController.swift
//  currencyconvertor
//
//  Created by Sai Sumanth Nissankara rao on 2022-10-19.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var us: UITextField!
    @IBOutlet weak var cad: UITextField!
    
    @IBOutlet weak var convert: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convert(_ sender: Any) {
        if us.text != ""{
            let temp = Double(us.text!) ?? 0.0
            cad.text = "\((temp * 1.37 ))"
        }else if cad.text != ""{
            let temp =  Double(cad.text!) ?? 0.0
            us.text = "\(temp * 0.73 )"
        }else if (us.text == "" && cad.text == "") || (us.text != "" && cad.text != ""){
            let infoAlert = UIAlertController(title: "Currency", message: "Please Enter valid currency", preferredStyle: .alert)
            infoAlert.addAction(UIAlertAction(title: "Retry", style: .default))
            present(infoAlert, animated: true)
        }
    }
    
}
