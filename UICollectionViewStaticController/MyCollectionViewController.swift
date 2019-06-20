
import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {
    var cellIds = ["Purple Cell", "Green Cell", "Blue Cell", "Red Cell"]
    var cellSizes = Array(repeating: CGSize(width: 170, height: 80), count: 4)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellIds.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: cellIds[indexPath.row], for: indexPath)
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //        if indexPath.row % 2 == 0 {
        //            cellSizes = [CGSize(width: 210, height: 60),
        //                         CGSize(width: 180, height: 100),
        //                         CGSize(width: 170, height: 80),
        //                         CGSize(width: 150, height: 150)]
        //        } else {
        //            cellSizes = [CGSize(width: Int.random(in: 5...20) * 10,
        //                                height: Int.random(in: 5...20) * 10),
        //                         CGSize(width: Int.random(in: 5...20) * 10,
        //                                height: Int.random(in: 5...20) * 10),
        //                         CGSize(width: Int.random(in: 5...20) * 10,
        //                                height: Int.random(in: 5...20) * 10),
        //                         CGSize(width: Int.random(in: 5...20) * 10,
        //                                height: Int.random(in: 5...20) * 10)]
        //        }
        
        switch indexPath.row {
        case 0:
            cellSizes[0] = CGSize(width: Int.random(in: 5...20) * 10,
                                  height: Int.random(in: 5...20) * 10)
        case 1:
            cellSizes[1] = CGSize(width: Int.random(in: 5...20) * 10,
                                  height: Int.random(in: 5...20) * 10)
            
        case 2:
            cellSizes[2] = CGSize(width: Int.random(in: 5...20) * 10,
                                  height: Int.random(in: 5...20) * 10)
        case 3:
            cellSizes[3] = CGSize(width: Int.random(in: 5...20) * 10,
                                  height: Int.random(in: 5...20) * 10)
        default: ()
        }
        
        
        collectionView.reloadItems(at: [indexPath])
        print("We pressed \(cellIds[indexPath.row])")
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
//    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return cellSizes[indexPath.row]
//    }
    
    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        print(sourceIndexPath.item, destinationIndexPath.item)
        
        let temp = cellIds.remove(at: sourceIndexPath.item)
        cellIds.insert(temp, at: destinationIndexPath.item)
    }
    
    
    
    
}
