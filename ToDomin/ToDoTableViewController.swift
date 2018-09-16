//
//  ToDoTableViewController.swift
//  ToDomin
//
//  Created by Togami Yuki on 2018/09/16.
//  Copyright © 2018 Togami Yuki. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    //UserDefaultsから取り出した値を入れるための配列
    var ToDoResultArray = [String]()
    @IBOutlet var ToDoTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //画面が表示されるたびに呼ばれる。
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //ToDoArrayというキー値で保存されたデータ、ToDoの配列データを呼び出す。
        if UserDefaults.standard.object(forKey:"ToDoArray") != nil{
            self.ToDoResultArray = UserDefaults.standard.object(forKey:"ToDoArray") as! [String]
        }
        self.ToDoTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    //セクションの数
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    //セクション内のセルの数
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.ToDoResultArray.count
    }

    //セルのインスタンス化
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = self.ToDoResultArray[indexPath.row]

        return cell
    }
    //セルの消去
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        //配列のセルのスライドされた番号の消去と消去後のデータを保存。
        if editingStyle == .delete {
            self.ToDoResultArray.remove(at: indexPath.row)
            UserDefaults.standard.set(self.ToDoResultArray, forKey: "ToDoArray")
            self.ToDoTableView.reloadData()
        }
        
    }
}
