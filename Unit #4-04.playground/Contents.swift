// Created on: Oct 2018
// Created by: Amin Zeina
// Created for: ICS3U
// This program convert level to percentage 

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionLabel = UILabel()
    let gradeLevelTextField = UITextField()
    let enterButton = UIButton()
    let showPercentageButton = UIButton()
    let answerLabel = UILabel()
    var gradeNumber : String = ""
    
    @objc func enterClicked() -> String {
        if let gradeLevelEntered : String = gradeLevelTextField.text! {
            if gradeLevelEntered == "R-" {
                gradeNumber = "20"
            } else if gradeLevelEntered == "R" {
                gradeNumber = "40"
            } else if gradeLevelEntered == "R+" {
                gradeNumber = "49"
            } else if gradeLevelEntered == "1-" {
                gradeNumber = "51"
            } else if gradeLevelEntered == "1" {
                gradeNumber = "55"
            } else if gradeLevelEntered == "1+" {
                gradeNumber = "58"
            } else if gradeLevelEntered == "2-" {
                gradeNumber = "61"
            } else if gradeLevelEntered == "2" {
                gradeNumber = "64"
            } else if gradeLevelEntered == "2+" {
                gradeNumber = "68"
            } else if gradeLevelEntered == "3-" {
                gradeNumber = "71"
            } else if gradeLevelEntered == "3" {
                gradeNumber = "74"
            } else if gradeLevelEntered == "3+" {
                gradeNumber = "78"
            } else if gradeLevelEntered == "4-" {
                gradeNumber = "83"
            } else if gradeLevelEntered == "4" {
                gradeNumber = "91"
            } else if gradeLevelEntered == "4+" {
                gradeNumber = "97"
            } else {
                answerLabel.text = "Invalid level."
            }
        } else {
            answerLabel.text = "You didnt enter a mark."
        }
        return gradeNumber
    }
    
    @objc func showPercentageClicked() {
        answerLabel.text = "You have \(gradeNumber)%."
    }
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Enter your grade level."
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        gradeLevelTextField.borderStyle = UITextBorderStyle.roundedRect
        gradeLevelTextField.placeholder = "Enter level"
        view.addSubview(gradeLevelTextField)
        gradeLevelTextField.translatesAutoresizingMaskIntoConstraints = false
        gradeLevelTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        gradeLevelTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        enterButton.setTitle("Enter", for: .normal)
        enterButton.setTitleColor(.blue, for: .normal)
        enterButton.titleLabel?.textAlignment = .center
        enterButton.addTarget(self, action: #selector(enterClicked), for: .touchUpInside)
        view.addSubview(enterButton)
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        enterButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        enterButton.leadingAnchor.constraint(equalTo: gradeLevelTextField.trailingAnchor, constant: 20).isActive = true
        
        showPercentageButton.setTitle("Show Percentage", for: .normal)
        showPercentageButton.setTitleColor(.blue, for: .normal)
        showPercentageButton.titleLabel?.textAlignment = .center
        showPercentageButton.addTarget(self, action: #selector(showPercentageClicked), for: .touchUpInside)
        view.addSubview(showPercentageButton)
        showPercentageButton.translatesAutoresizingMaskIntoConstraints = false
        showPercentageButton.topAnchor.constraint(equalTo: gradeLevelTextField.bottomAnchor, constant: 20).isActive = true
        showPercentageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: showPercentageButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
