import Cocoa

class PracticeViewController:
    NSViewController,
    NSCollectionViewDelegate,
    NSCollectionViewDataSource
{
    //outlet
    @IBOutlet var collectionView: NSCollectionView!
    //enitity
    let entity: Entity              = Entity()
    var resource: NSMutableArray!   = []

    //MARK: LifeCycle
    override func viewDidLoad()
    {
        super.viewDidLoad()

        setCollectionView()
        setResource()
    }
    
    override func viewWillAppear()
    {
        super.viewWillAppear()
    }

    //MARK: NSCollectionViewDataSource
    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if resource.count > 0
        {
            return resource.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem
    {
        let item = collectionView.makeItem(withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "InnerViewItem"), for: indexPath)

        if let aItem = item as? InnerViewItem
        {
            if let aEntity: Entity = resource[indexPath.item] as? Entity
            {
                aItem.updateCell(aEntity,
                                 item: aItem)
                return aItem
            }
        }
        
        return item
    }
    
    //MARK: Private
    private func setCollectionView()
    {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(NSNib(nibNamed: NSNib.Name(rawValue: "InnerViewItem"),
                                      bundle: nil),
                                forItemWithIdentifier: NSUserInterfaceItemIdentifier(rawValue: "InnerViewItem"))
        let gridLayout                      = NSCollectionViewGridLayout()
        gridLayout.minimumItemSize          = NSSize(width: 100,
                                                     height: 100)
        gridLayout.maximumItemSize          = NSSize(width: 175,
                                                     height: 175)
        gridLayout.minimumInteritemSpacing  = 10
        gridLayout.minimumLineSpacing       = 10
        gridLayout.margins                  = NSEdgeInsets(top: 10,
                                                           left: 10,
                                                           bottom: 10,
                                                           right: 10)
        collectionView.collectionViewLayout = gridLayout
    }
    
    private func setResource()
    {
        let stab: StabEntity = StabEntity()
        resource = stab.loadStabEntity()
        
        collectionView.reloadData()
    }
}

