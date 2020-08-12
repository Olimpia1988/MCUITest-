import UIKit

class EventsCell: UICollectionViewCell {
  
  lazy var eventTitle: UILabel = {
    let title = UILabel()
    title.translatesAutoresizingMaskIntoConstraints = false
    title.textColor = #colorLiteral(red: 0.9335630536, green: 0.9728947282, blue: 0.9807273746, alpha: 1)
    return title
   }()
  
  lazy var eventHostname: UILabel = {
    let name = UILabel()
    name.translatesAutoresizingMaskIntoConstraints = false
    name.numberOfLines = 0
    name.textColor = .black
    return name
  }()
  
  lazy var hostPicture: CircularImageView = {
    let image = CircularImageView()
    image.image = #imageLiteral(resourceName: "placeHolder.png")
    image.translatesAutoresizingMaskIntoConstraints = false
    return image
  }()
  
  
  override init(frame: CGRect) {
    super.init(frame: .zero)
    contentView.addSubview(eventTitle)
    contentView.addSubview(eventHostname)
    contentView.addSubview(hostPicture)
    setupConstrains()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupConstrains() {

    [eventTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20), eventTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10), eventTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10), eventTitle.heightAnchor.constraint(equalToConstant: 50)].forEach{ $0.isActive = true }
    
    [eventHostname.topAnchor.constraint(equalTo: eventTitle.bottomAnchor, constant: 20), eventHostname.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10), eventHostname.trailingAnchor.constraint(equalTo: hostPicture.leadingAnchor, constant: -5), eventHostname.heightAnchor.constraint(equalToConstant: 50)].forEach{$0.isActive = true }
   
    //MARK: Edjust profile picture dimentions 
    [hostPicture.topAnchor.constraint(equalTo: eventHostname.topAnchor), hostPicture.leadingAnchor.constraint(equalTo: eventHostname.trailingAnchor, constant: 5), hostPicture.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10), hostPicture.heightAnchor.constraint(equalToConstant: 20)].forEach{$0.isActive = true }
     
  
  }
  
   func configureCell(_ Event: EventModel, _ indexPath: IndexPath, _ completionHandler: @escaping() -> Void) {
    UIUtilities.setupHeaderText(eventTitle, Event.eventTopic)
    UIUtilities.setupHostText(eventHostname, Event.eventHost)
  }
  
}
