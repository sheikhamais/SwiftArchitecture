//
//  HomeViewModel.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import Foundation

class HomeViewModel {
    
    private let getClients: GetClientsUseCase
    private let getClientById: GetClientByIdUseCase
    private let getStakeholders: GetStakeHoldersUseCase
    
    init(getClients: GetClientsUseCase, getClientById: GetClientByIdUseCase, getStakeholders: GetStakeHoldersUseCase) {
     
        self.getClients = getClients
        self.getClientById = getClientById
        self.getStakeholders = getStakeholders
    }
    
    func getClientsData(completion: @escaping ([Client]) -> Void) {
        getClients.execute(completion: completion)
    }
}
