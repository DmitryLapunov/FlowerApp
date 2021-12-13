//
//  CompositionVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 10.12.21.
//

import UIKit
import Alamofire

protocol CompleteComposition: AnyObject {
    func refreshComposition(_ composition: [String])
}

class CompositionVC: UIViewController {
    @IBOutlet weak var discardCompositinButton: UIButton!
    @IBOutlet weak var acceptCompositionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    weak var compositionDelegate: CompleteComposition?
    var compositionArray: [String] = []
    var selectedCompositions: [IndexPath] = []
    var compositionArrayChosen: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Состав"
        setupTableView()
        
        discardCompositinButton.addShadowAndTintColor()
        acceptCompositionButton.addShadowAndTintColor()
        
        discardCompositinButton.layer.borderColor = UIColor(named: "MainColor")?.cgColor
        discardCompositinButton.layer.borderWidth = 1
        discardCompositinButton.layer.cornerRadius = 10
                
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "")
    }
    
    func setupTableView() {
        tableView.dataSource = self
        let nib = UINib(nibName: String(describing: FilterCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: String(describing: FilterCell.self))
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(named: "TertiaryColor")
    }
    
    @objc func checkboxClicked(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        let point = sender.convert(CGPoint.zero, to: tableView)
        guard let indexPath = tableView.indexPathForRow(at: point) else { return }
        if selectedCompositions.contains(indexPath) {
            selectedCompositions.remove(at: selectedCompositions.firstIndex(of: indexPath) ?? 0)
        } else {
            selectedCompositions.append(indexPath)
        }
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    @IBAction func discardCompositionAction(_ sender: Any) {
    }
    
    @IBAction func acceptCompositionAction(_ sender: Any) {
        for item in selectedCompositions {
            compositionArrayChosen.append(compositionArray[item.row])
        }
        compositionDelegate?.refreshComposition(compositionArrayChosen)
        navigationController?.popViewController(animated: true)
    }
}

extension CompositionVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return compositionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FilterCell.self), for: indexPath)
        guard let filterCell = cell as? FilterCell else { return cell }
        filterCell.setupCell(composition: compositionArray[indexPath.row])
        
        if let checkboxButton = filterCell.checkboxButton {
            checkboxButton.addTarget(self, action: #selector(checkboxClicked(_:)), for: .touchUpInside)
            checkboxButton.isSelected = selectedCompositions.contains(indexPath)
        }
        
        filterCell.selectionStyle = .none
        return filterCell
    }
}
