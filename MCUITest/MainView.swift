import UIKit

class MainView: UIView {

  lazy var eventsCollectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
    cv.translatesAutoresizingMaskIntoConstraints = false
    cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "eventsCell")
//    let evetnsCollectionView = UICollectionView()
//    evetnsCollectionView.frame = bounds
//    evetnsCollectionView.register(eventsCell.self, forCellWithReuseIdentifier: "eventsCell")
    return cv
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
    constrains()
  }
  
  
  private func constrains() {
    eventsCollectionView.translatesAutoresizingMaskIntoConstraints = false
    [eventsCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0), eventsCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0), eventsCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0), safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0)].forEach{$0.isActive = true }
  }

}

