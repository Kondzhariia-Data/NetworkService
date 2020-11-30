//
//  ViewController.swift
//  NetworkService
//
//  Created by Data Kondzhariia on 30.11.2020.
//

import UIKit

class ViewController: UIViewController {

    private var networkService = NetworkService<RequestBuilder>()

    override func viewDidLoad() {
        super.viewDidLoad()

        networkService.request(service: .users, decodeType: [User].self) { users in
            print(users)
        }
    }
}

