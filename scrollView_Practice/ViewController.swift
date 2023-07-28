//
//  ViewController.swift
//  scrollView_Practice
//
//  Created by 김하람 on 2023/07/28.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var scrollView: UIScrollView!
    var label: UILabel!
    var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView()
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            make in make.edges.equalToSuperview()
        }
        
        image = UIImageView()
        image.backgroundColor = .systemYellow
        image.image = UIImage(named: "flower")
        scrollView.addSubview(image)
        
        label = UILabel()
        label.text = "ramram"
        scrollView.addSubview(label)
        
        image.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(230)
        }
        
        label.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(image.snp.bottom).offset(1000)
            make.bottom.equalToSuperview().inset(50
            )
        }
        // Do any additional setup after loading the view.
    }


}

