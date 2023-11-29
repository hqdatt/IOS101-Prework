//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Hoang Quang Dat on 28/11/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }

        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    var isTextColorBlack = true

    @IBAction func changeLabelColor(_ sender: UISwitch) {
        isTextColorBlack.toggle()

        label1.textColor = isTextColorBlack ? .black : .white
        label2.textColor = isTextColorBlack ? .black : .white
        label3.textColor = isTextColorBlack ? .black : .white

        // Notify the user about label color change with an alert
        showLabelColorChangeAlert()
    }

    func showLabelColorChangeAlert() {
        let alert = UIAlertController(title: "Label Color Changed", message: "Label colors have been updated.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
