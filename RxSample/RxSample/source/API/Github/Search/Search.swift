//
//  Search.swift
//  RxSample
//
//  Created by yagi on 2021/03/03.
//

import APIKit
import Himotoki

struct SearchRequest: GithubRequest {
    typealias Response = Repository
    
    
    let query: String
    
    let page: Int
    
    let perPage = 10
    
    var path: String {
        return "/search/repositories"
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var parameters: Any? {
        return [
            "q": query,
            "page": page,
            "per_page": perPage
        ]
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> SearchRequest.Response {
        return try decodeArray(object)
    }
}

