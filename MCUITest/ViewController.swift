//
//  ViewController.swift
//  MCUITest
//
//  Created by Olimpia on 7/25/20.
//  Copyright © 2020 Olimpia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    fileprivate let eventsCollectionView: UICollectionView = {
      let layout = UICollectionViewFlowLayout()
      layout.scrollDirection = .horizontal
      let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
      cv.translatesAutoresizingMaskIntoConstraints = false
      cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "eventsCell")
      return cv
    }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(eventsCollectionView)
    setupContrains()
    setupDelegation()
    
   
  }
  
  private func setupDelegation() {
    eventsCollectionView.delegate = self
    eventsCollectionView.dataSource = self
  }
  
  private func setupContrains() {
    eventsCollectionView.backgroundColor = .blue
    [eventsCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
    eventsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
    eventsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40), eventsCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height / 2)].forEach{$0.isActive = true }
    
  }
}

extension ViewController:  UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "eventsCell", for: indexPath)
    cell.backgroundColor = .red
    return cell 
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
  }
}
