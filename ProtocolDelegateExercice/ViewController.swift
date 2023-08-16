//
//  ViewController.swift
//  ProtocolDelegateExercice 14 12 2022
//
//  Created by Abdenoure Boudlal on 12/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelTaxt: UILabel!
    @IBAction func showModalButtonPressed(_ sender: Any) {
        let modalViewController = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(identifier: "ModalViewController") as! ModalViewController
        modalViewController.delegate = self
        present(modalViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension ViewController: ModalViewControllerDelegate{
    func modalviewController(_ viewController: ModalViewController, didUpdateText text: String) {
        labelTaxt.text = text
    }
}
