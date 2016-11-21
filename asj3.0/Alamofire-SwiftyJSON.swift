//
//  Alamofire-SwiftyJSON.swift
//
//  Created by ALEXANDR BARENBOYM on 17.12.15.
//  Copyright © 2015 ALEXANDR BARENBOYM. All rights reserved.
//

import Alamofire
import SwiftyJSON

extension DataRequest {
    public static func SwiftyJSONResponseSerializer(
        options options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DataResponseSerializer<Any>
    {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }
            
            let emptyDataStatusCodes: Set<Int> = [204, 205]
            
            if let response = response, emptyDataStatusCodes.contains(response.statusCode) { return .success(NSNull()) }
            
            guard let validData = data, validData.count > 0 else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNilOrZeroLength))
            }
            
            let json: JSON = SwiftyJSON.JSON(data: validData)
            if let jsonError = json.error {
                return .failure(jsonError)
            }
            
            return .success(json)
        }
    }
    
    public func responseSwiftyJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DataResponse<Any>) -> Void)
        -> Self
    {
        return response(
            queue: queue,
            responseSerializer: DataRequest.SwiftyJSONResponseSerializer(options: options),
            completionHandler: completionHandler
        )
    }
}
