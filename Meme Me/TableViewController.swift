//
//  TableViewController.swift
//  Meme Me
//
//  Created by Tigran Tshorokhyan on 5/7/17.
//  Copyright © 2017 Tigran Tshorokhyan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var memes = [Meme]()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        memes = (UIApplication.shared.delegate as! AppDelegate).memes
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! TableViewCell
        let meme = memes[(indexPath as NSIndexPath).row]
        cell.tableImage.image = meme.memedImage
        cell.tableTopLabel.text = meme.topText! as String
        cell.tableBottomLable.text = meme.bottomText! as String

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailController.meme = memes[(indexPath as NSIndexPath).row]
        detailController.memeIndex = indexPath.row
        navigationController!.pushViewController(detailController, animated: true)
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            memes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            (UIApplication.shared.delegate as! AppDelegate).memes = memes
        }
    }

}
