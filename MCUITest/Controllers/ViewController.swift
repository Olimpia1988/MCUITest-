import UIKit

class ViewController: UIViewController {
  
  let mainView = MainView()
  var dummyData = EventModel.dummyData

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    setupDelegation()
    
   
  }
  
  private func setupDelegation() {
    mainView.eventsCollectionView.delegate = self
    mainView.eventsCollectionView.dataSource = self
  }
  

}

extension ViewController:  UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return dummyData.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventsCell", for: indexPath) as? EventsCell else { return UICollectionViewCell() }
    let dataToLoad = dummyData[indexPath.row]
    cell.configureCell(dataToLoad, indexPath) { }
    cell.backgroundColor = #colorLiteral(red: 0.1993968487, green: 0.2038410902, blue: 0.2254047692, alpha: 1)
    return cell 
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width, height: collectionView.frame.width)
  }
}
