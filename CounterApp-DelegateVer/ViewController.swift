//
//  ViewController.swift
//  CounterApp-DelegateVer
//
//  Created by 近藤米功 on 2022/07/28.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var countLabel: UILabel!

    private let presenter = CounterPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(delegate: self)
    }

    @IBAction func didTapCountUpButton(_ sender: Any) {
        presenter.incrementCount()
    }

    @IBAction func didTapCountDownButton(_ sender: Any) {
        presenter.decrementCount()
    }


    @IBAction func didTapResetButton(_ sender: Any) {
        presenter.resetCount()
    }
}

extension ViewController: CounterDelegate{
    func updateCount(count: Int) {
        countLabel.text = String(count)
    }
}

