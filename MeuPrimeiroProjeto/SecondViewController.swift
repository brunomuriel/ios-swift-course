//
//  SecondViewController.swift
//  MeuPrimeiroProjeto
//

import Foundation
import UIKit


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "thirdScreen" {
            let controller = segue.destination as? ThirdViewController
            controller?.delegate = self
            controller?.modalPresentationStyle = .fullScreen
        }
    }
}

extension SecondViewController: ThirdViewControllerDelegate {
    func notification(msg: String) {
        print(msg)
    }
}
