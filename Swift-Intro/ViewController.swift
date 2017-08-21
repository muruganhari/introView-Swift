//
//  ViewController.swift
//  Swift-Intro
//
//  Created by murugan on 21/08/17.
//  Copyright © 2017 murugan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {

    var list: NSArray = NSArray()
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var introCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
       introCollection.pagingEnabled = true
        list = ["bed1.jpg","bed2.jpeg","bed3.jpg"]
        pageControl.numberOfPages = list.count;
        pageControl.currentPage = 0;
        introCollection.reloadData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 3
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell: CollectionViewCell = introCollection.dequeueReusableCellWithReuseIdentifier("CollectionViewCell", forIndexPath: indexPath) as! CollectionViewCell
        cell.imgintro.image = UIImage.init(named: list.objectAtIndex(indexPath.row) as! String)
        return cell
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: introCollection.frame.size.width, height: introCollection.frame.size.height)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    func scrollViewDidEndDecelerating(scrollView: UIScrollView)
    {
        let pageWidth: CGFloat = introCollection.frame.size.width
        let currentPage: CGFloat = introCollection.contentOffset.x / pageWidth
        if 0.0 != fmodf(Float(currentPage), 1.0) {
            self.pageControl.currentPage = Int(currentPage) + 1
        }
        else {
            self.pageControl.currentPage = Int(currentPage)
        }
        self.changePageIcon(pageControl.currentPage)
    }
    func changePageIcon(pageNo: NSInteger){
        if(pageNo == 0){
            
        }else if(pageNo == 1){
            
        }else if(pageNo == 2){
            
        }else if(pageNo == 3){
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

