//
//  GetStakeHoldersUseCase.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import Foundation

class GetStakeHoldersUseCase: UseCase {
    typealias Input = NoInput
    
    typealias Output = [Stakeholder]
    
    let repository: ExampleRepositoryInterface
    init(repository: ExampleRepositoryInterface) {
        self.repository = repository
    }
    
    func execute(input: Input, completion: @escaping (Output) -> Void) {
        repository.fetchStakeholdersData {
            completion($0)
        }
    }
}
