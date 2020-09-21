//
//  ShoppingViewController.swift
//  Hwahae
//
//  Created by sapere4ude on 2020/09/16.
//  Copyright © 2020 sapere4ude. All rights reserved.
//

import UIKit
import SwiftyJSON

class ShoppingViewController: UIViewController {
    
    @IBOutlet weak var shoppingTableView: UITableView!
    
    var models = [Type3Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Type3Model(homeNumber: 1, brand_name: "qq", product_description: "dddd", image_url: "product1"))
        
        models.append(Type3Model(homeNumber: 1, brand_name: "qq", product_description: "dddd", image_url: "ssss"))
        models.append(Type3Model(homeNumber: 1, brand_name: "qq", product_description: "dddd", image_url: "ssss"))
        
        
        guard let jsonURL = Bundle(for: type(of: self)).path(forResource: "list", ofType: "json")
        else {
            return
        }
        
        guard let jsonString = try? String(contentsOf: URL(fileURLWithPath: jsonURL), encoding: String.Encoding.utf8)
        else {
            return
        }
        
        //jsonString
        var type3Model: Type3Model?
        do {
            type3Model = try JSONDecoder().decode(Type3Model.self, from: Data(jsonString.utf8))
        }
        catch {
            print("Error occured when decoding")
        }
        
        guard let result = type3Model else {
            return
        }
        
        print(result.homeNumber)
        print(result.brand_name)
        print(result.product_description)
        print(result)

        self.shoppingTableView.delegate = self
        self.shoppingTableView.dataSource = self
        // dequeue를 사용하기 위해선 반드시 아래와 같은 등록 과정을 거쳐야 한다! 아래와 같이 하기 싫다면 스토리보드로 이동하여 직접 identifier에
        // 값을 지정하는 방법도 있긴하다.
        self.shoppingTableView.register(UINib(nibName: "ShoppingTableViewCellType1", bundle: nil), forCellReuseIdentifier: "ShoppingTableViewCellType1")
        self.shoppingTableView.register(UINib(nibName: "ShoppingTableViewCellType2", bundle: nil), forCellReuseIdentifier: "ShoppingTableViewCellType2")
        self.shoppingTableView.register(UINib(nibName: "ShoppingTableViewCellType3", bundle: nil), forCellReuseIdentifier: "ShoppingTableViewCellType3")
        self.shoppingTableView.register(UINib(nibName: "ShoppingTableViewCellType4", bundle: nil), forCellReuseIdentifier: "ShoppingTableViewCellType4")
        self.shoppingTableView.separatorStyle = .none
    
    }
        
        
}

extension ShoppingViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ShoppingTableViewCellType4 = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCellType4", for: indexPath) as! ShoppingTableViewCellType4
        
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }

}
