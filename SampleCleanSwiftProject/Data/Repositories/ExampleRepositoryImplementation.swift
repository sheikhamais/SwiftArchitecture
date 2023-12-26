//
//  ExampleRepositoryImplementation.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import Foundation

class ExampleRepositoryImplementation: ExampleRepositoryInterface {
    
    func fetchClientsData(completion: @escaping ([Client]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            let responses = [
                "Martin",
                "Smith",
                "Obama"
            ]
            
            let clients = responses.map { name in
                Client(name: name)
            }
            
            
            completion(clients)
        }
    }
    
    func fetchStakeholdersData(completion: @escaping ([Stakeholder]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            let responses = [
                "Jemaima",
                "Rose",
                "David"
            ]
            
            let st = responses.map { name in
                Stakeholder(name: name)
            }
            
            completion(st)
        }
    }
    
}
