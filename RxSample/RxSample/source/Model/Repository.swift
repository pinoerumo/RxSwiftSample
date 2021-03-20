//
//  Repository.swift
//  RxSample
//
//  Created by yagi on 2021/03/03.
//

import Foundation
import Himotoki

struct Repository: Himotoki.Decodable{
    let status_code: String
    let status_txt: Int
    
    static func decode(_ e: Extractor) throws -> Repository {
            return try Repository(
                status_code: e <| "status_code",
                status_txt: e <| "status_txt"
            )
        }
}
