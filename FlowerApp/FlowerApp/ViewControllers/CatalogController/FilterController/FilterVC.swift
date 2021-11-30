//
//  FilterVC.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 26.11.21.
//

import UIKit
import MultiSlider

class FilterVC: UIViewController {
    @IBOutlet weak var filterBackgroundView: UIView!
    @IBOutlet weak var applyFiltersButton: UIButton!
    @IBOutlet weak var closeFiltersButton: UIButton!
    @IBOutlet weak var discardFiltersButton: UIButton!
    @IBOutlet weak var sliderBackgroundView: UIView!
    @IBOutlet weak var priceSortBackgroundView: UIView!
    @IBOutlet weak var sortByPriceDescButton: UIButton!
    @IBOutlet weak var sortByPriceAscButton: UIButton!
    @IBOutlet weak var nameSortBackgroundView: UIView!
    @IBOutlet weak var sortByNameDescButton: UIButton!
    @IBOutlet weak var sortByNameAscButton: UIButton!
    
    var lowestPrice = 0.0
    var highestPrice = 0.0
    let multiSlider = MultiSlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterBackgroundView.addShadowAndCornerRadius()
        sliderBackgroundView.addShadowAndCornerRadius()
        priceSortBackgroundView.addShadowAndCornerRadius()
        nameSortBackgroundView.addShadowAndCornerRadius()
        
        applyFiltersButton.addShadowAndTintColor()
        discardFiltersButton.addShadowAndTintColor()
        closeFiltersButton.addShadowAndTintColor()
        sortByPriceDescButton.isNormalState()
        sortByPriceAscButton.isNormalState()
        sortByNameDescButton.isNormalState()
        sortByNameAscButton.isNormalState()
                
        discardFiltersButton.layer.borderColor = UIColor(named: "MainColor")?.cgColor
        discardFiltersButton.layer.borderWidth = 1
        discardFiltersButton.layer.cornerRadius = 10
        
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.view.frame
        self.view.insertSubview(blurEffectView, at: 0)
        
        configureSlider()
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
    }
    
    @objc func sliderDragEnded(slider: MultiSlider) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeFiltersAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func discardFiltersAction(_ sender: Any) {
        multiSlider.value = [multiSlider.minimumValue, multiSlider.maximumValue]
    }
    
    @IBAction func applyFiltersAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
