import UIKit

class MainView: UIView {

  lazy var eventsCollectionView: UICollectionView = {
    let evetnsCollectionView = UICollectionView()
    evetnsCollectionView.frame = bounds
    evetnsCollectionView.register(eventsCell.self, forCellWithReuseIdentifier: "eventsCell")
    return evetnsCollectionView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func commonInit() {
    addSubview(eventsCollectionView)
  }
  

}

