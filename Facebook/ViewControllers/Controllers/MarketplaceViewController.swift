//
//  ViewController.swift
//  26-3-23 API
//
//  Created by Rahul on 26/03/23.
//

import UIKit
import Alamofire
//import SDWebImage
//import AlamofireImage


class MarketplaceViewController: UIViewController {
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var apiTableVIew: UITableView!
    
    // MARK: - Variables
    
    var arrOfAPI: [ProductDetails] = []
//    var arrOfImage = [[String : Any]]()
    
    // MARK: - Life Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nib()
        APICalling()
    }
    
    // MARK: - Initialization

    private func nib() {
        let nibFile: UINib = UINib(nibName: "APITableViewCell", bundle: nil)
        apiTableVIew.register(nibFile, forCellReuseIdentifier: "APITableViewCell")
        apiTableVIew.separatorStyle = .none
    }
    
   
    private func APICalling() {
        AF.request("https://fakestoreapi.com/products",method: .get).responseData { [self] response in
            debugPrint("response \(response)")
            if response.response?.statusCode == 200 {
                guard let apiData = response.data else { return }
                do {
                    let apiRequest = try JSONDecoder().decode([ProductDetails].self, from: apiData)
                    arrOfAPI = apiRequest
                    apiTableVIew.reloadData()
                } catch {
                    print(error.localizedDescription)
                }
            } else {
                print("locho")
            }
        }
    }
}

extension MarketplaceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrOfAPI.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MarketplaceTableViewCell = apiTableVIew.dequeueReusableCell(withIdentifier: "APITableViewCell", for: indexPath) as! MarketplaceTableViewCell
        cell.label1.text = "\(arrOfAPI[indexPath.row].id)"
        cell.label2.text = "\(arrOfAPI[indexPath.row].title)"
        cell.label3.text = "\(arrOfAPI[indexPath.row].price)"
        cell.label4.text = "\(arrOfAPI[indexPath.row].description)"
        cell.label5.text = "\(arrOfAPI[indexPath.row].catagory)"
        cell.label6.text = "\(arrOfAPI[indexPath.row].rating.rate)"
        cell.label7.text = "\(arrOfAPI[indexPath.row].rating.count)"
        
        cell.productImageView.image = img(link: arrOfAPI[indexPath.row].image!)
        
//        cell.spaceWebView.loadRequest(URLRequest(url: URL(string: arrOfAPI[indexPath.row].url!)!))
        
        //      cell.spaceWebView.loadHTMLString(arrdetails[indexPath.row].url, baseURL:nil)
        
        cell.layer.borderWidth = 1
        return cell
    }
    
    
    func img(link:String)->UIImage? {
        let url1 = URL(string: link)
        
        let data = try? Data(contentsOf: url1! as URL)
        
        return UIImage(data: data!)
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 600
    }
}


