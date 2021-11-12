//
//  ViewController.swift
//  GCD
//
//  Created by Kirill Drozdov on 10.11.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        func nnfsd(name: @escaping(String)->Void){
            name("Kirill")
            print("")
            print("")
            print("")
            print("")
        }
        
        nnfsd { (nameUser) in
            print("Hello user \(nameUser)")
        }
        
        print("КТо ты")
    }


}

