//
//  DetailViewController.swift
//  Meme Me
//
//  Created by Tigran Tshorokhyan on 5/7/17.
//  Copyright © 2017 Tigran Tshorokhyan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    
    var meme: Meme!
    var memeIndex: Int?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarController?.tabBar.isHidden = true
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        detailImage.image = meme.memedImage
        self.tabBarController?.tabBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func detailEditButton(_ sender: Any) {
        let memeEdit = storyboard?.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        memeEdit.memeEdit = meme
        self.navigationController?.pushViewController(memeEdit, animated: true)
    }

    @IBAction func deleteButton(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if let _ = memeIndex{
            appDelegate.memes.remove(at: memeIndex!)
            navigationController?.popViewController(animated: true)
        }
    }

}
