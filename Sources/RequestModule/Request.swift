import Foundation

public class Request{

    private var url: URL

    init(_ urlString: String){
        url = URL(string: urlString)!
    }

    private func getDatas(_ callBack: @escaping (String?, URLResponse?, Error?) -> Void){
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            callBack(String(data: data!, encoding: .utf8),response, error)
        }
        task.resume()
    }

    public func request(_ callBack: (String?) -> Void){
        var dat: String? = nil

        self.getDatas { datas, response, error in
            print(datas)
            dat = datas 
        }

        while(dat == nil){
            sleep(1)
        }

        callBack(dat)
    }

}