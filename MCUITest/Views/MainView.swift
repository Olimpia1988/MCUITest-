import UIKit

class MainView: UIView {

   lazy var eventsCollectionView: UICollectionView = {
      let layout = UICollectionViewFlowLayout()
      layout.scrollDirection = .vertical
      let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
      cv.translatesAutoresizingMaskIntoConstraints = false
      cv.register(EventsCell.self, forCellWithReuseIdentifier: "eventsCell")
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
    eventsCollectionView.backgroundColor = .blue
       [eventsCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
       eventsCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 40),
       eventsCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -40), eventsCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40)].forEach{$0.isActive = true }

  }

}

