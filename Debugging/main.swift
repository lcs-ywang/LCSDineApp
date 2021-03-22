import Foundation

struct KKK : Codable {
    var list:[DineDetail]
}

struct DineDetail : Codable{
    var id:Int
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
    
    @Published var goFuckYourself:[DineDetail] = [DineDetail(id: 0, house: "", date: "", brLocation: "", brTime: "", luLocation: "", luTime: "", diLocation: "", diTime: "")]
    
    init() {
        let url = URL(string: "https://api.sheety.co/73a333855fd3edc50f8b28aba37efaa1/dineInOrTakeOut/list")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            
            if let placeholder = try? JSONDecoder().decode(KKK.self, from: data){
                print(placeholder)
            }else{
                print("Nope")
            }
            
        }.resume()
        
        
        print("Hello")
    }
}


// Create a test store for use with Xcode previews
let testStore = ApiData()
sleep(10)
