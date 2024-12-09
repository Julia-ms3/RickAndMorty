import Foundation

extension String{
    func formatDate() -> String{
        let format = DateFormatter()
        format.dateFormat =  "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        if let date = format.date(from: self){
            format.dateFormat = "dd MMMM yyyy"
            return format.string(from: date)
        }
        
        return "unknown"
        
    }
}
