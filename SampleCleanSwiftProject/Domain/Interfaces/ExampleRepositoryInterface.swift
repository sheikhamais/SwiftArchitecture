//
//  ExampleRepositoryInterface.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import Foundation

protocol ExampleRepositoryInterface {
    func fetchClientsData(completion: @escaping ([Client]) -> Void)
    func fetchStakeholdersData(completion: @escaping ([Stakeholder]) -> Void)
}
