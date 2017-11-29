//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Kamil Basmaz on 28.11.2017.
//  Copyright © 2017 Kamil Basmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableviewLandmark: UITableView!
   
    var landmarkNames = [String]()
    var lanmarkImages  = [UIImage] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*  Tble view Kullnabilmek için didLoad da tanımlanması gerekenler ve delegate gerekli.
         
         Datasource ve delegate'i didload da tanımlayıp.
         tableviewLandmark.dataSource     = self
         tableviewLandmark.delegate = self
         
         Bu işlemleri yapabilmesi içinde delegate lerin self e tanımlanması gerekli
         yani ü
         UITableViewDelegate, UITableViewDataSource   Bunların delegate olarak tanımlanması gerekiyor.
 */
        
        landmarkNames.append("colosseum")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj mahal")
        landmarkNames.append("Great Wall")
        
        lanmarkImages.append(UIImage(  named : "colosseum.jpeg")!)
        lanmarkImages.append(UIImage(  named : "kremlin.jpeg")!)
        lanmarkImages.append(UIImage(  named : "stonehenge.jpeg")!)
        lanmarkImages.append(UIImage(  named : "tajmahal.jpeg")!)
        lanmarkImages.append(UIImage(  named : "thegreatwall.jpeg")!)
       
        tableviewLandmark.dataSource     = self
        tableviewLandmark.delegate = self

    }

    // delegate ler tanımlandığında  aşağıodaki fonksiyonlar zorunlu olarak tanımlanır.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // verinin count'u
    return  landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tvcell = UITableViewCell()
        tvcell.textLabel?.text = landmarkNames[indexPath.row]
        return tvcell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        // Tableview'den Kayıt Silmek.
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            landmarkNames.remove(at: indexPath.row)
            lanmarkImages.remove(at: indexPath.row)
            tableviewLandmark.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
            
        }
    }

}

