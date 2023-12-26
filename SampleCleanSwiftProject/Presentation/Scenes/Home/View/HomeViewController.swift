//
//  HomeViewController.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import UIKit

class HomeViewController: UIViewController {
   
    private let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        loadClients()
    }
    
    private func loadClients() {
        viewModel.getClientsData {
            $0.forEach { client in
                dump(client)
            }
        }
    }
}
