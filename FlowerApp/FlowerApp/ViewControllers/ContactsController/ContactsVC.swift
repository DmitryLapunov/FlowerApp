//
//  ContactsVC.swift
//  FlowerApp
//
//  Created by Евгений on 13.11.21.
//

import UIKit

class ContactsVC: UIViewController {

    let imageName = [[UIImage(systemName: "phone"), UIImage(named: "icon_a1"), UIImage(named: "icon_mts"), UIImage(named: "icon_viber")],
                     [UIImage(named: "icon_vkontakte"), UIImage(named: "icon_telegram"), UIImage(named: "icon_instagram"), UIImage(named: "icon_facebook")],
                     [UIImage(named: "icon_google_maps")]]
    
    let section = ["Наши телефоны", "Мы в соцсетях", "Как добраться"]
    
    let tableViewSettings = [["+375(17)396-36-66", "+375(29)668-39-65", "+375(29)751-17-77", "+375(29)161-16-66"],
                             ["Вконтакте", "Telegram", "Instagram", "Facebook"],
                             ["Google Maps"]]
    
    let arrayOfEnum: [[Application]] = [[.phoneGor, .phoneA1, .phoneMTS, .viber],
                                        [.vk, .telegram, .instagram, .facebook],
                                        [.googleMap]]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Контакты"
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: String(describing: ContactsCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: ContactsCell.self))
        
    }
}

extension ContactsVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewSettings[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return section.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = self.section[section]
        return section
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ContactsCell.self), for: indexPath)
        guard let contactsCell = cell as? ContactsCell else { return cell }
        contactsCell.textCell.text = tableViewSettings[indexPath.section][indexPath.row]
        contactsCell.imageCell.image = imageName[indexPath.section][indexPath.row]
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
