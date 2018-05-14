import Foundation
import Cocoa

class StabEntity: NSObject
{
    //define test data
    open func loadStabEntity() -> NSMutableArray
    {
        let resultSet: NSMutableArray = []
        let titleSet: Array         = ["Sky",
                                       "Sea",
                                       "earth",
                                       "ocean",
                                       "mountain",
                                       "river"]

        let firstDetails: Array    = ["Hello",
                                       "Good",
                                       "Night",
                                       "noon",
                                       "Early",
                                       "Late"]

        let secondDetails: Array    = ["fine", "sad", "cry", "nice", "down", "up"]
        let mainDetails: Array      = ["Good day.",
                                       "Wet day.",
                                       "Very Cold.",
                                       "Good Weather.",
                                       "Heavy rain.",
                                       "Comming Spring."]

        let thumbnails: Array       = [NSImage(named: NSImage.Name(rawValue: "1")),
                                       NSImage(named: NSImage.Name(rawValue: "2")),
                                       NSImage(named: NSImage.Name(rawValue: "3")),
                                       NSImage(named: NSImage.Name(rawValue: "4")),
                                       NSImage(named: NSImage.Name(rawValue: "5")),
                                       NSImage(named: NSImage.Name(rawValue: "6"))]
        
        for i in 0..<6
        {
            let entity: Entity          = Entity()
            entity.titleValue           = titleSet[i] as String
            entity.firstDetailValue     = firstDetails[i] as String
            entity.secondDetailValue    = secondDetails[i] as String
            entity.mainDetailValue      = mainDetails[i] as String
            entity.thumbnailImage       = thumbnails[i]

            resultSet.add(entity)
        }
        
        return resultSet
    }
}
