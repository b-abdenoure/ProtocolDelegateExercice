//
//  ModalViewController.swift
//  ProtocolDelegateExercice 14 12 2022
//
//  Created by Abdenoure Boudlal on 12/14/22.
//

import UIKit
protocol ModalViewControllerDelegate {
    func modalviewController(_ viewController: ModalViewController, didUpdateText text: String)
}

class ModalViewController: UIViewController {

    @IBOutlet weak var modaltextField: UITextField!
     var delegate: ModalViewControllerDelegate?
    @IBAction func doneButtonPressed(_ sender: Any) {
        guard let text = modaltextField.text else {return}
        delegate?.modalviewController(self, didUpdateText: text)
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
