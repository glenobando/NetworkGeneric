//
//  ViewController.swift
//  NetworkGeneric
//
//  Created by glenobando on 06/17/2021.
//  Copyright (c) 2021 glenobando. All rights reserved.
//

import UIKit
import NetworkGeneric

class ViewController: UIViewController {

    let client = NetworkGeneric(session: URLSession.shared, baseURL: "https://jsonplaceholder.typicode.com/")
    let client2 = NetworkGeneric(session: URLSession.shared, baseURL: "https://pokeapi.co/api/v2/")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TESTING GET POKEMON API
        client2.GET(path: "pokemon/1", type: Pokemon.self, complete: { result in
            switch result {
            case .success(let pokeList):
                print(pokeList)
            case .failure(let error):
                print(error)
            }
        })

        //TESTING GET JSONPLACEHOLDER
//        client.GET(path: "posts/100", type: Post.self, complete: { result in
//            switch result {
//            case .success(let postList):
//                print(postList)
//            case .failure(let error):
//                print(error)
//            }
//        })

        //TESTING POST JSONPLACEHOLDER
//        client.POST(path: nil, object: Post(userId: 1, id: 0, title: "TEST", body: "This is a POST test"),
//                    type: Post.self, complete: { result in
//            switch result {
//            case .success(let newPost):
//                print(newPost)
//            case .failure(let error):
//                print(error)
//            }
//        })

        //TESTING PUT JSONPLACEHOLDER
//        client.PUT(path: "posts/100", object: Post(userId: 1, id: 0, title: "TEST", body: "This is a POST test"),
//                    type: Post.self, complete: { result in
//            switch result {
//            case .success(let updatedPost):
//                print(updatedPost)
//            case .failure(let error):
//                print(error)
//            }
//        })

        //TESTING DELETE JSONPLACEHOLDER
//        client.DELETE(path: "posts/100", type: Post.self, complete: { result in
//            switch result {
//            case .success(let updatedPost):
//                print(updatedPost)
//            case .failure(let error):
//                print(error)
//            }
//        })
         // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

