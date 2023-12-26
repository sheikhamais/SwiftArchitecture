//
//  GetClientByIdUseCase.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import Foundation

class GetClientByIdUseCase: UseCase {
    typealias Input = NoInput
    
    typealias Output = Client
    
    let repository: ExampleRepositoryInterface
    init(repository: ExampleRepositoryInterface) {
        self.repository = repository
    }
    
    func execute(input: Input, completion: @escaping (Output) -> Void) {
        repository.fetchClientsData {
            guard let client = $0.first else { return }
            completion(client)
        }
    }
}
