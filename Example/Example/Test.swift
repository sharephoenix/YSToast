//
//  Test.swift
//  Example
//
//  Created by touch on 2020/7/14.
//  Copyright © 2020 eric. All rights reserved.
//

import UIKit

protocol TestProtocol {
    func printGg()
}

extension TestProtocol where Self: UIView {
    func printGg() {
        print("这里是默认方法")
    }
}

extension UIView: TestProtocol {

}

class Test: UIView {
    func printGg() {
        print("这里是 Test 方法")
    }
}

// 问题demo1
func case0() {
    let t = Test()
    t.printGg()
    var array: [UIView & TestProtocol] = []
    array.append(t)
    if let v = array.first as? UIView {
        v.printGg()
    }
    array.first?.printGg()
}

