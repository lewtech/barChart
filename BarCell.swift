//
//  barCell.swift
//  barChart
//
//  Created by Lew Flauta on 5/7/17.
//  Copyright © 2017 Lew Flauta. All rights reserved.
//

import UIKit

class BarCell: UICollectionViewCell{

    let barView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    var barHeightConstraint: NSLayoutConstraint?

    override init (frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .yellow

        addSubview(barView)

//        barView.topAnchor.constraint(equalTo: topAnchor).isActive = true

//        barView.heightAnchor.constraint(equalToConstant: 200).isActive = true

        barHeightConstraint = barView.heightAnchor.constraint(equalToConstant: 300)
        barHeightConstraint?.isActive = true

        barHeightConstraint?.constant = 100

        barView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        barView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true

        barView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
    }


    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
