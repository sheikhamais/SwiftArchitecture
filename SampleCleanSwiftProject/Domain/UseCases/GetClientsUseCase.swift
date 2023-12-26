//
//  GetClientsUseCase.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import Foundation

class GetClientsUseCase: UseCase {
    typealias Input = NoInput
    
    typealias Output = [Client]
    
    let repository: ExampleRepositoryInterface
    init(repository: ExampleRepositoryInterface) {
        self.repository = repository
    }
    
    func execute(input: NoInput = NoInput(), completion: @escaping ([Client]) -> Void) {
        repository.fetchClientsData {
            completion($0)
        }
    }
}
