//
//  RequestBuilder.swift
//  NetworkService
//
//  Created by Data Kondzhariia on 30.11.2020.
//

import Foundation
import Alamofire

protocol URLRequestBuilder {
    var baseURL: String { get }
    var url: String { get }
    var path: String { get }
    var headers: HTTPHeaders? { get }
    var parameters: Parameters? { get }
    var method: HTTPMethod { get }
    var encoding: ParameterEncoding { get }
}

extension URLRequestBuilder {
    var baseURL: String {
        return "https://jsonplaceholder.typicode.com/"
    }

    var url: String {
        return baseURL + path
    }
}

enum RequestBuilder: URLRequestBuilder {
    case users

    var path: String {
        switch self {
        case .users:
            return "users"
        }
    }

    var headers: HTTPHeaders? {
        return nil
    }

    var parameters: Parameters? {
        switch self {
        case .users:
            return nil
        }
    }

    var method: HTTPMethod {
        switch self {
        case .users:
            return .get
        }
    }

    var encoding: ParameterEncoding {
        switch self {
        case .users:
            return JSONEncoding.default
        }
    }
}
