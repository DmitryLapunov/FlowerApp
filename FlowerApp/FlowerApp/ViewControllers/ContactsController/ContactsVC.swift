//
//  ContactsVC.swift
//  FlowerApp
//
//  Created by Евгений on 13.11.21.
//

import UIKit

class ContactsVC: UIViewController {
  
    let arrayOfEnum: [[ContactsType]] = [[.phoneGor, .phoneA1, .phoneMTS, .viber],
                                        [.vk, .telegram, .instagram, .facebook],
                                        [.googleMap]]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Контакты"
        
        tableView.backgroundColor = UIColor.tertiaryColor()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.layer.masksToBounds = false
        tableView.layer.shadowColor = UIColor.black.cgColor
        tableView.layer.shadowOpacity = 0.15
        tableView.layer.shadowRadius = 2
        tableView.layer.shadowOffset = CGSize(width: 0, height: 2)
        
        let nib = UINib(nibName: String(describing: ContactsCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: ContactsCell.self))
        
    }
}

extension ContactsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfEnum[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfEnum.count
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.textColor = UIColor.mainColor()
        header.textLabel?.font = UIFont(name: "Octava-Regular", size: 16)
    }
        
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ["Наши телефоны", "Мы в соцсетях", "Как добраться"][section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ContactsCell.self), for: indexPath)
        guard let contactsCell = cell as? ContactsCell else { return cell }
        contactsCell.textCell.text = arrayOfEnum[indexPath.section][indexPath.row].contactInfo
        contactsCell.imageCell.image = arrayOfEnum[indexPath.section][indexPath.row].image
        return contactsCell
    }
    
}

extension ContactsVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ContactsCell.self), for: indexPath)
        guard let contactsCell = cell as? ContactsCell else { return }
        contactsCell.openApplication(application: arrayOfEnum[indexPath.section][indexPath.row])
        
        if arrayOfEnum[indexPath.section][indexPath.row] == .googleMap {
            navigationController?.pushViewController(GoogleMapVC(nibName: String(describing: GoogleMapVC.self), bundle: nil), animated: true)
        }
    }
}
