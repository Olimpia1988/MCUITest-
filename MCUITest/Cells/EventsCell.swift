import UIKit

class EventsCell: UICollectionViewCell {
  
  lazy var name: UILabel = {
    let name = UILabel()
    name.translatesAutoresizingMaskIntoConstraints = false
    name.numberOfLines = 0
    name.textColor = .black
    return name
  }()
  
  override init(frame: CGRect) {
    super.init(frame: .zero)
    contentView.addSubview(name)
    setupConstrains()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupConstrains() {
    [name.centerYAnchor.constraint(equalTo: contentView.centerYAnchor), name.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)].forEach{$0.isActive = true }
  
  }
  
}
