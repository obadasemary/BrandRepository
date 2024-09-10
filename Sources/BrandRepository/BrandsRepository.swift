//
//  BrandsRepository.swift
//
//
//  Created by Abdelrahman Mohamed on 10/09/2024.
//

import Foundation
import NetworkLayer
import CoreAPI
import BrandUseCase

public class BrandsRepository {
    
    private let networkService: NetworkService
    
    init(networkService: NetworkService) {
        self.networkService = networkService
    }
}

extension BrandsRepository: BrandsRepositoryProtocol {
    public func getBrands(
        brandId: String,
        page: Int,
        perPage: Int
    ) async throws -> BrandResponseEntity {
        let endpoint = BrandEndpoint.getBrands(brandId: brandId, page: page, perPage: perPage)
        return try await networkService.request(endpoint: endpoint, responseModel: BrandResponseEntity.self)
    }
}
