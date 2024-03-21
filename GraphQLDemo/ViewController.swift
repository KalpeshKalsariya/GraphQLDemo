//
//  ViewController.swift
//  GraphQLDemo
//
//  Created by  Kalpesh on 20/03/24.
//

import UIKit
import Foundation
import Apollo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Fetch data using the generated query
        let apollo = ApolloClient(url: URL(string: "https://countries.trevorblades.com/")!)

        apollo.fetch(query: GetCountriesQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                // Handle successful response
                print("Received GraphQL result: \(graphQLResult)")
            case .failure(let error):
                // Handle error
                print("Error fetching GraphQL result: \(error)")
            }
        }

    }


}

