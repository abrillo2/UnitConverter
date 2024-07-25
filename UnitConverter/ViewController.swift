//
//  ViewController.swift
//  UnitConverter
//
//  Created by abraham on 7/24/24.
//

import UIKit

class ViewController: UIViewController {

    //view outlets
    
    @IBOutlet weak var viewTitle: UILabel!
    @IBOutlet weak var convertButton: UIButton!

    @IBOutlet weak var stackContainer1: UIStackView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var inputField: UITextField!
    //default override
    override func viewDidLoad() {
        super.viewDidLoad()
        viewTitle.translatesAutoresizingMaskIntoConstraints = false;
        resultLabel.translatesAutoresizingMaskIntoConstraints = false;
        convertButton.translatesAutoresizingMaskIntoConstraints = false;
        inputField.translatesAutoresizingMaskIntoConstraints = false;
        stackContainer1.translatesAutoresizingMaskIntoConstraints = false;
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        //center the stack view
        stackContainer1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true;
        stackContainer1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true;
        stackContainer1.widthAnchor.constraint(equalTo: self.view.widthAnchor,constant: -100).isActive=true;
        
        stackContainer1.spacing = 50;
        
        convertButton.heightAnchor.constraint(equalToConstant: 50).isActive=true;
        inputField.heightAnchor.constraint(equalToConstant: 50).isActive=true;
        viewTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        
        
        
        
    }
   //close keyboard on return
    @IBAction func textFieldReturn(_ sender: UITextField) {
        _ = sender.resignFirstResponder();
    }
   @IBAction func convertUnit(_ sender: Any) {
        guard let tempString = inputField.text else{return;}
        
        if let feranahit = Double(tempString){
            var celicious  = (feranahit - 32)/1.8;
            celicious = celicious.rounded();
            let resultText = "result text celicisous \(celicious)";
            resultLabel.text = resultText;
        }
    }
    
    //close keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        inputField.endEditing(true);
    }
    
}

