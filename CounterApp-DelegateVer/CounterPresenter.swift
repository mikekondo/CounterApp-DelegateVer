//
//  CounterPresenter.swift
//  CounterApp-DelegateVer
//
//  Created by 近藤米功 on 2022/07/28.
//

import UIKit
protocol CounterDelegate{
    func updateCount(count: Int)
}

class CounterPresenter{
    private var delegate: CounterDelegate?
    private var count = 0{
        didSet{
            delegate?.updateCount(count: count)
        }
    }

    func attachView(delegate: CounterDelegate){
        self.delegate = delegate
    }

    func detachView(){
        self.delegate = nil
    }

    func incrementCount(){
        count += 1
    }

    func decrementCount(){
        count -= 1
    }

    func resetCount(){
        count = 0
    }

}
