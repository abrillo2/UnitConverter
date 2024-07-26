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
    
    //distance converter outlets
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var viewTitle2: UILabel!
    @IBOutlet weak var inputField2: UITextField!
    
    @IBOutlet weak var convertButton2: UIButton!
    
    //default override
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //remove auto layout
        viewTitle.translatesAutoresizingMaskIntoConstraints = false;
        resultLabel.translatesAutoresizingMaskIntoConstraints = false;
        convertButton.translatesAutoresizingMaskIntoConstraints = false;
        inputField.translatesAutoresizingMaskIntoConstraints = false;
        stackContainer1.translatesAutoresizingMaskIntoConstraints = false;
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        
        view2.translatesAutoresizingMaskIntoConstraints = false;
        viewTitle2.translatesAutoresizingMaskIntoConstraints = false;
        convertButton2.translatesAutoresizingMaskIntoConstraints = false;
        inputField2.translatesAutoresizingMaskIntoConstraints = false;
        
        //center the stack view
        //stackContainer1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true;
        stackContainer1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true;
        stackContainer1.widthAnchor.constraint(equalTo: self.view.widthAnchor,constant: -100).isActive = true;
        stackContainer1.topAnchor.constraint(equalTo: view2.bottomAnchor).isActive = true;
        
    
        
        stackContainer1.spacing = 50;
        
        convertButton.heightAnchor.constraint(equalToConstant: 50).isActive=true;
        inputField.heightAnchor.constraint(equalToConstant: 50).isActive=true;
        viewTitle.heightAnchor.constraint(equalToConstant: 50).isActive = true;
        

        
        
        
        //use visual language format
        let views = ["view2":view2,"titileLabel2":viewTitle2,"inputField2":inputField2,"convertButton2":convertButton2,"stackView1": stackContainer1];
        let metrics = ["space":100,"childrenGap":50,"height":50];
        
        let vflConstratin1 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-space-[view2]-space-[stackView1]-|", metrics: metrics, views: views);
        let vflConstratin2 = NSLayoutConstraint.constraints(withVisualFormat: "V:|[titileLabel2(height)]-childrenGap-[inputField2(height)]-childrenGap-[convertButton2(height)]-|", metrics: metrics, views: views);
        
        //let vflConstratinH1 = NSLayoutConstraint.constraints(withVisualFormat: "H:", metrics: metrics?, views: views)
        
        NSLayoutConstraint.activate(vflConstratin1);
        NSLayoutConstraint.activate(vflConstratin2);
        
        view2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true;
        //view2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true;
        view2.widthAnchor.constraint(equalTo: self.view.widthAnchor,constant: -100).isActive = true;
        
    }
   //close keyboard on return
    
    @IBAction func textFieldReturn(_ sender: UITextField) {
        _ = sender.resignFirstResponder();
    }
    
  //convert distance
    
    @IBAction func convertUnit2(_ sender: Any) {
    }
    
  //convert temp
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

