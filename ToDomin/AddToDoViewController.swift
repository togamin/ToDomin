//
//  AddToDoViewController.swift
//  ToDomin
//
//  Created by Togami Yuki on 2018/09/16.
//  Copyright © 2018 Togami Yuki. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var ToDoArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func AddToDo(_ sender: UIButton) {
        
        //現在の配列の状況を取り出す。
        if UserDefaults.standard.object(forKey:"ToDoArray") != nil{
            self.ToDoArray = UserDefaults.standard.object(forKey:"ToDoArray") as! [String]
        }
        
        //テキストフィールド内に記入した情報配列に代入。
        self.ToDoArray.append(textField.text!)
        
        //登録した内容をUserDefaults(アプリ内)に保存。
        UserDefaults.standard.set(self.ToDoArray, forKey: "ToDoArray")
        
        
        //登録したら、前の画面に戻る。
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
