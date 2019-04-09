//
//  PhotosCollectionViewController.swift
//  Astro
//
//  Created by Nathanael Youngren on 4/8/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NYCNetworking().fetchMarsRover(withName: "curiosity", sol: 100) { (dictionary, error) in
            
        }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"PhotoCell", for: indexPath)
    
        // Configure the cell
    
        return cell
    }
    
//    var photos: [UIImage]? {
//        var array: [UIImage] = []
//
//        if let sol = sol {
//            NYCNetworking().fetchMarsRover(withName: "curiosity", sol: sol) { (dictionary, error) in
//                if let error = error {
//                    print(error)
//                    return
//                }
//
//
//            }
//
//        } else {
//            NYCNetworking().fetchMarsRover(withName: "curiosity", sol: 1) { (dictionary, error) in
//                if let error = error {
//                    print(error)
//                    return
//                }
//            }
//        }
//    }
//
//    var sol: Int32? {
//        didSet {
//            self.collectionView.reloadData()
//        }
//    }

}
