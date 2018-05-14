import Foundation
import Cocoa

class Entity: NSObject
{
    var titleValue: String?
    var firstDetailValue: String?
    var secondDetailValue: String?
    var mainDetailValue: String?
    var thumbnailImage: NSImage!
    
    open func parseEntity(_ title: String?,
                          firstDetail: String?,
                          secondDetail: String?,
                          mainDetail: String?,
                          thumbnail: NSImage?)
    {
        titleValue              = title
        firstDetailValue        = firstDetail
        secondDetailValue       = secondDetail
        mainDetailValue         = mainDetail
        thumbnailImage          = thumbnail
    }
}
