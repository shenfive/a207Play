//
//  ViewController.swift
//  a207Play
//
//  Created by 申潤五 on 2020/9/19.
//

import Cocoa

class ViewController: NSViewController,NSTableViewDataSource, NSTableViewDelegate {

    @IBOutlet weak var theTableView: NSTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        theTableView.delegate = self
        theTableView.dataSource = self
 
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func play(_ sender: NSButton) {
        print("play")
    }
    
    
    func numberOfRows(in tableView: NSTableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        let cell = NSText()
        cell.string = "Hello"
        print(tableColumn)
        return cell
    }
    
    @IBAction func newSong(_ sender: Any) {
        //讀取新檔案
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.allowedFileTypes = ["mp3","m4a"]
        openPanel.allowsOtherFileTypes = false
        openPanel.beginSheetModal(for: self.view.window!) { (id) in
            print(id)
        }
    }
    
    
}

