import UIKit

class eventsCell: UICollectionViewCell {
  lazy var name: UILabel = {
    let name = UILabel()
    return name
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
 
  
    
}
//    lazy var name: UILabel = {
//       let name = UILabel()
//        return name
//    }()
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.addSubview(name)
//        setConstrains()
//
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    private func setConstrains() {
//        name.translatesAutoresizingMaskIntoConstraints = false
//        [name.centerXAnchor.constraint(equalTo: centerXAnchor), name.centerYAnchor.constraint(equalTo: centerYAnchor)].forEach{ $0.isActive = true }
//
//    }
//}
