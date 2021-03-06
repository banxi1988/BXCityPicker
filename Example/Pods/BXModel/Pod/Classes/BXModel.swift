import Foundation
import SwiftyJSON

public protocol BXJSONDeserializable{
    init(json:JSON)
}

public protocol BXJSONSerializable{
  func toDict() -> [String:Any]
}


public protocol BXModelAware{
    
}

public protocol BXModel:BXModelAware,BXJSONDeserializable,BXJSONSerializable{
}


public extension BXJSONDeserializable{
    public static func arrayFrom(_ json:JSON) -> [Self]{
        var array = [Self]()
        for (_,subJson):(String,JSON) in json{
            let item = Self(json:subJson)
            array.append(item)
        }
        return array
    }
}


public extension BXJSONSerializable{
  public static func arrayFrom(_ models:[Self]) -> [[String:Any]]{
    return models.map{ $0.toDict () }
  }
}

public extension NSObject{
   
    public func bx_modelSetWithJSON(_ json:JSON){
        
    }
    
}
