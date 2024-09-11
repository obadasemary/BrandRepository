//
//  BrandRepositoryFactory.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation
import NetworkLayer
import BrandUseCase

public final class BrandRepositoryFactory {
    
    private let networkService: NetworkService
    
    public init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

public extension BrandRepositoryFactory {
    
    // Factory method to create the repository
    func makeBrandDetailsRepository() -> BrandDetailsRepositoryProtocol {
        BrandDetailsRepository(networkService: networkService)
    }
}
