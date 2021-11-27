import UIKit

struct CovidAPI {
    static func getTotal(completion: @escaping (CovidInfo.Total) -> Void) {
        let url = URL(string: "https://covid19japanwebapi.now.sh/api/v1/total")
        let request = URLRequest(url: url!)
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error != nil {
                print("error:\(error!.localizedDescription)")
            }
            if let data = data {
                print(data)
                let result = try! JSONDecoder().decode(CovidInfo.Total.self, from: data)
                completion(result)
            }
        }.resume()
    }
}
