//
//  GetCurrencyData.swift
//  Cart
//
//  Created by Jan Moravek on 20/02/2018.
//  Copyright © 2018 Jan Moravek. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

protocol GetCurrencyDataDelegate {
    func newConversationRateData(newConversationRate: Float)
    func makePopupAlert(errorCode: Int, description: String)
}

class GetCurrencyData {
    
    var currencyDelegate:GetCurrencyDataDelegate?
 
    func downloadRate(url: String, pair: String) {
        
        Alamofire.request(url, method: .get).responseJSON {
            response in
            if response.result.isSuccess {
                let dataJSON : JSON = JSON(response.result.value!)
                
                self.convertJSONDataRate(json: dataJSON, pair: pair)
//                print(response.result.value!)
                
            } else {
                self.handleError(error: response.result.error!)
            }
        }
    }
    
    
    func convertJSONDataRate(json: JSON, pair: String) {
        
        if let conversationRateResult = json["quotes"][pair].float {
            print(conversationRateResult)
            self.currencyDelegate?.newConversationRateData(newConversationRate: conversationRateResult)
        } else {
            print("JSON error")
        }
    }
    
    func handleError(error: Error) {
       
        if let error = error as? AFError {
            switch error {
            case .invalidURL(let url):
                print("Invalid URL: \(url) - \(error.localizedDescription)")
            case .parameterEncodingFailed(let reason):
                print("Parameter encoding failed: \(error.localizedDescription)")
                print("Failure Reason: \(reason)")
            case .multipartEncodingFailed(let reason):
                print("Multipart encoding failed: \(error.localizedDescription)")
                print("Failure Reason: \(reason)")
            case .responseValidationFailed(let reason):
                print("Response validation failed: \(error.localizedDescription)")
                print("Failure Reason: \(reason)")
                
                switch reason {
                case .dataFileNil, .dataFileReadFailed:
                    print("Downloaded file could not be read")
                case .missingContentType(let acceptableContentTypes):
                    print("Content Type Missing: \(acceptableContentTypes)")
                case .unacceptableContentType(let acceptableContentTypes, let responseContentType):
                    print("Response content type: \(responseContentType) was unacceptable: \(acceptableContentTypes)")
                case .unacceptableStatusCode(let code):
                    print("Response status code was unacceptable: \(code)")
                }
            case .responseSerializationFailed(let reason):
                print("Response serialization failed: \(error.localizedDescription)")
                print("Failure Reason: \(reason)")
            }
            
            print("Underlying error: \(String(describing: error.underlyingError))")
        } else if let error = error as? URLError {
//            print("URLError occurred: \(error)")
            self.currencyDelegate?.makePopupAlert(errorCode: error.errorCode, description: error.localizedDescription)
            
        } else {
//            print("Unknown error: \(error)")
            self.currencyDelegate?.makePopupAlert(errorCode: 000, description: "Unknown error")
        }
    }
    
}




