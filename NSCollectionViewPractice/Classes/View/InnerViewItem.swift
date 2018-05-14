import Foundation
import Cocoa

class InnerViewItem: NSCollectionViewItem
{
    //outlet
    @IBOutlet weak var titleTextField: NSTextField!
    @IBOutlet weak var firstDetailLabel: NSTextField!
    @IBOutlet weak var secondDetailLabel: NSTextField!
    @IBOutlet weak var mainDetailLabel: NSTextField!
    @IBOutlet var thumbnail: NSImageView?

    //MARK: Life Cycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear()
    {
        super.viewWillAppear()
    }

    //MARK: Private
    open func updateCell(_ entity: Entity, item: InnerViewItem)
    {
        item.titleTextField?.stringValue    = entity.titleValue!
        item.firstDetailLabel.stringValue   = entity.firstDetailValue!
        item.secondDetailLabel.stringValue  = entity.secondDetailValue!
        item.mainDetailLabel.stringValue    = entity.mainDetailValue!

        if let thumbnail = entity.thumbnailImage
        {
            item.thumbnail?.image = thumbnail
        }
    }
}
