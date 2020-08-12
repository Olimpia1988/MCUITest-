import UIKit

struct UIUtilities {
  
  static func setupHeaderText(_ eventTitle: UILabel, _ text: String) {
    eventTitle.font = UIFont(name: "Verdana", size: 21)
    eventTitle.text = text
    eventTitle.numberOfLines = 0
    eventTitle.textAlignment = .left
  }
  
  static func setupHostText(_ setupBodyText: UILabel, _ text: String) {
    setupBodyText.font = UIFont(name: "Verdana", size: 16)
    setupBodyText.text = text
    setupBodyText.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    setupBodyText.numberOfLines = 0
  }
  
  static func setupEventSummary(_ eventSumary: UILabel, _ text: String) {
   setupHostText(eventSumary, text)
       eventSumary.translatesAutoresizingMaskIntoConstraints = true
       eventSumary.sizeToFit()
       eventSumary.numberOfLines = 0
    
  }
  
  static func setupImage(_ hostImage: UIImage?,_ hostImageView: UIImageView) {
    if let currentImage = hostImage {
      hostImageView.image = currentImage
    }
   
  }
  
  
}
