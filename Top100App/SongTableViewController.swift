//
//  SongTableViewController.swift
//  Top100App
//
//  Created by stoller on 2019/4/2.
//  Copyright © 2019年 stoller. All rights reserved.
//

import UIKit

class SongTableViewController: UITableViewController {

    var songs = [Song(name: "7 Rings", singer: "Ariana Grande", image: "ariana", Youtubor: "Yeah, breakfast at Tiffany's and bottles of bubbles Girls with tattoos who like getting in trouble Lashes and diamonds, ATM machines Buy myself all of my favorite things (Yeah)"), Song(name: "Without Me", singer: "Halsey", image: "halsey", Youtubor: "hihi"), Song(name: "Sunflower", singer: "Post Malone ", image: "post", Youtubor: "hihi"), Song(name: "WOW", singer: "Post Malone", image: "post", Youtubor: "hihi"), Song(name: "Please Me", singer: "Cardi B & Bruno Mars", image: "cardiB", Youtubor: "hihi")]
    
    @IBOutlet var songLabel: [UILabel]!
    @IBOutlet var singerLabel: [UILabel]!
    @IBOutlet var singerImage: [UIImageView]!
    
    @IBOutlet var rankingLabel: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        var i = 0
        for song in songs {
            songLabel[i].text = song.name
            singerLabel[i].text = song.singer
            singerImage[i].image = UIImage(named: song.image)
            rankingLabel[i].text = String( Int(i + 1))
            i = i + 1
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as? SongViewController
        
        if let row = tableView.indexPathForSelectedRow?.row {
            controller?.song = songs [row]
            
        }
        
        
    }
}
