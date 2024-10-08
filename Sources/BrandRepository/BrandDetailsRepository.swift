//
//  BrandDetailsRepository.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation
import NetworkLayer
import CoreAPI
import BrandUseCase

public class BrandDetailsRepository {
    
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

extension BrandDetailsRepository: BrandDetailsRepositoryProtocol {
    
    public func getBrandDetails(
        brandId: String,
        page: Int,
        perPage: Int,
        cursor: String?
    ) async throws -> BrandResponseEntity {
        let endpoint = BrandEndpoint.getBrandDetails(
            brandId: brandId,
            page: page,
            perPage: perPage,
            cursor: cursor
        )
        return try await networkService.request(
            endpoint: endpoint,
            responseModel: BrandResponseEntity.self
        )
    }
}
