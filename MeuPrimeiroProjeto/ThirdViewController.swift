//
//  ThirdViewController.swift
//  MeuPrimeiroProjeto
//

import UIKit

protocol ThirdViewControllerDelegate: AnyObject {
    func notification(msg: String)
}

class ThirdViewController: UIViewController {

    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var label: UILabel!
    weak var delegate: ThirdViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    
    @IBAction func alphaLabel(_ sender: Any) {
        delegate?.notification(msg: "Cheguei na terceira ViewController")
        label.alpha = CGFloat(alphaSlider.value)
    }
    
}
