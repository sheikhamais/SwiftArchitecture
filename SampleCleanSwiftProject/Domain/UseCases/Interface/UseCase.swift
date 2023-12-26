//
//  UseCase.swift
//  SampleCleanSwiftProject
//
//  Created by Amais Sheikh on 21/12/2023.
//

import Foundation

protocol UseCase {
    associatedtype Input
    associatedtype Output
    func execute(input: Input, completion: @escaping (Output) -> Void)
}
