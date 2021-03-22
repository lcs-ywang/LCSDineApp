//
//  Store.swift
//  CourseSelectionAssistant (iOS)
//
//  Created by Russell Gordon on 2021-03-17.
//

import Foundation

struct DineDetail : Codable, Identifiable{
    var id:String
    var house:String
    var date:String
    var brLocation:String
    var brTime:String
    var luLocation:String
    var luTime:String
    var diLocation:String
    var diTime:String
}

class ApiData: ObservableObject {
    
    @Published var goFuckYourself:[DineDetail] = [DineDetail(id: "", house: "", date: "", brLocation: "", brTime: "", luLocation: "", luTime: "", diLocation: "", diTime: "")]
    
    init() {
        let url = URL(string: "https://api.sheety.co/73a333855fd3edc50f8b28aba37efaa1/dineInOrTakeOut/list")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "GET"
        
        // 2. Run the request and process the response
        URLSession.shared.dataTask(with: request) { data, response, error in
            print(data)
        }.resume()
    }
}


// Create a test store for use with Xcode previews
let testStore = ApiData()
