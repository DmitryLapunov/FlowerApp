//
//  FilterVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 26.11.21.
//

import UIKit
import MultiSlider

protocol FilterProductsDelegate: AnyObject {
    func filterProductsArray(priceRange: [CGFloat], namePriceFilter: NamePriceFilter, composition: [String])
}

enum NamePriceFilter {
    case byNameDesc
    case byNameAsc
    case byPriceDesc
    case byPriceAsc
    case ignore
}

class FilterVC: UIViewController {
    @IBOutlet weak var applyFiltersButton: UIButton!
    @IBOutlet weak var discardFiltersButton: UIButton!
    @IBOutlet weak var sliderBackgroundView: UIView!
    @IBOutlet weak var priceSortBackgroundView: UIView!
    @IBOutlet weak var sortByPriceDescButton: UIButton!
    @IBOutlet weak var sortByPriceAscButton: UIButton!
    @IBOutlet weak var nameSortBackgroundView: UIView!
    @IBOutlet weak var sortByNameDescButton: UIButton!
    @IBOutlet weak var sortByNameAscButton: UIButton!
    @IBOutlet weak var chooseCompositionButton: UIButton!
    @IBOutlet weak var chooseCompositionBackgroundView: UIView!
    @IBOutlet weak var chooseCompositionLabel: UILabel!
    @IBOutlet weak var compositionImageView: UIImageView!
    @IBOutlet weak var chooseCompositionPromptLabel: UILabel!
    
    weak var filterDelegate: FilterProductsDelegate?
    
    var lowestPrice = 0.0
    var highestPrice = 0.0
    let multiSlider = MultiSlider()
    var compositionArray: [String] = []
    var compositionArrayChosen: [String] = []
    var currentSliderValue: [CGFloat] = []
    var sortingOrder: NamePriceFilter = .ignore
    var buttonArray: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Фильтры"
        
        navigationController?.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "")
        
        sliderBackgroundView.addShadowAndCornerRadius()
        priceSortBackgroundView.addShadowAndCornerRadius()
        nameSortBackgroundView.addShadowAndCornerRadius()
        chooseCompositionBackgroundView.addShadowAndCornerRadius()
        
        applyFiltersButton.addShadowAndTintColor()
        discardFiltersButton.addShadowAndTintColor()
        sortByPriceDescButton.isNormalState()
        sortByPriceAscButton.isNormalState()
        sortByNameDescButton.isNormalState()
        sortByNameAscButton.isNormalState()
        
        discardFiltersButton.layer.borderColor = UIColor(named: "MainColor")?.cgColor
        discardFiltersButton.layer.borderWidth = 1
        discardFiltersButton.layer.cornerRadius = 10
        
        configureSlider()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.dismiss(animated: true, completion: nil)
    }
    
    func configureSlider() {
        multiSlider.minimumValue = lowestPrice
        multiSlider.maximumValue = highestPrice

        multiSlider.value = [multiSlider.minimumValue, multiSlider.maximumValue]
        multiSlider.thumbCount = 2
        
        multiSlider.addTarget(self, action: #selector(sliderChanged), for: .valueChanged)
        multiSlider.addTarget(self, action: #selector(sliderDragEnded), for: .touchUpInside)
        
        multiSlider.outerTrackColor = UIColor(named: "SecondaryLabelColor")
        multiSlider.orientation = .horizontal
        multiSlider.valueLabelPosition = .bottom
        multiSlider.valueLabelColor = UIColor(named: "MainLabelColor")
        multiSlider.valueLabelFont = UIFont(name: "Open Sans", size: 15)
        multiSlider.snapStepSize = 1.0
        multiSlider.isHapticSnap = true
        multiSlider.tintColor = UIColor(named: "MainColor")
        multiSlider.trackWidth = 4
        multiSlider.hasRoundTrackEnds = true
        multiSlider.showsThumbImageShadow = true
        
        sliderBackgroundView.addSubview(multiSlider)
        multiSlider.frame = CGRect(x: 10, y: -15, width: sliderBackgroundView.frame.width - 60, height: sliderBackgroundView.frame.height)
    }
    
    @objc func sliderChanged(slider: MultiSlider) {
        print("thumb \(slider.draggedThumbIndex) moved")
        print("now thumbs are at \(slider.value)")
        currentSliderValue = slider.value
    }
    
    @objc func sliderDragEnded(slider: MultiSlider) {
        
    }
    
    @IBAction func sortingAction(_ sender: UIButton) {
        sortByPriceDescButton.isNormalState()
        sortByPriceAscButton.isNormalState()
        sortByNameDescButton.isNormalState()
        sortByNameAscButton.isNormalState()
        sender.isSelectedState()
        switch sender.tag {
        case 100:
            sortingOrder = .byPriceDesc
        case 101:
            sortingOrder = .byPriceAsc
        case 102:
            sortingOrder = .byNameAsc
        case 103:
            sortingOrder = .byNameDesc
        default:
            break
        }
    }
    
    @IBAction func chooseCompositionAction(_ sender: Any) {
        let compositionVC = CompositionVC(nibName: String(describing: CompositionVC.self), bundle: nil)
        compositionVC.compositionArray = self.compositionArray
        compositionVC.compositionDelegate = self
        navigationController?.pushViewController(compositionVC, animated: true)
    }
    
    @IBAction func discardFiltersAction(_ sender: Any) {
        multiSlider.value = [multiSlider.minimumValue, multiSlider.maximumValue]
        currentSliderValue = multiSlider.value
        
        sortByPriceDescButton.isNormalState()
        sortByPriceAscButton.isNormalState()
        sortByNameDescButton.isNormalState()
        sortByNameAscButton.isNormalState()
        sortingOrder = .ignore
        
        chooseCompositionLabel.text = "Выбрать состав"
        chooseCompositionPromptLabel.text = "Поиск по совпадениям состава букета"
        compositionImageView.image = UIImage(systemName: "chevron.right")
        compositionImageView.tintColor = UIColor(named: "MainLabelColor")
    }
    
    @IBAction func applyFiltersAction(_ sender: Any) {
        let defaultSliderValue = [multiSlider.minimumValue, multiSlider.maximumValue]
        let priceRange = currentSliderValue == defaultSliderValue ? [] : currentSliderValue
        
        filterDelegate?.filterProductsArray(priceRange: priceRange, namePriceFilter: sortingOrder, composition: compositionArrayChosen)
        navigationController?.popViewController(animated: true)
    }
}

extension FilterVC: CompleteComposition {
    func refreshComposition(_ composition: [String]) {
        compositionArrayChosen = composition
        chooseCompositionLabel.text = "Состав выбран"
        
        let compositionString = compositionArrayChosen.joined(separator: ", ")
        let nsCompositionString = compositionString as NSString
        chooseCompositionPromptLabel.text = nsCompositionString.length > 50 ? "\(nsCompositionString.substring(with: NSRange(location: 0, length: 50)))" + "..." : compositionString
        
        compositionImageView.image = UIImage(systemName: "checkmark")
        compositionImageView.tintColor = UIColor(named: "MainColor")
    }
}
