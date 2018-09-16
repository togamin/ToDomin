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
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func AddToDo(_ sender: UIButton) {
        //テキストフィールド内に記入した情報をアプリ内に保存する。
        //登録したら、前の画面に戻る。
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
