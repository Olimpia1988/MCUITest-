import UIKit

class ViewController: UIViewController {
  
  let mainView = MainView()


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
    return 5
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventsCell", for: indexPath) as? EventsCell else { return UICollectionViewCell() }
    cell.name.text = "TEST"
    cell.backgroundColor = .red
    return cell 
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
  }
}
