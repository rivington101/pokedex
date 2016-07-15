//
//  PokeCell.swift
//  Pokedex
//
//  Created by Peter Rule on 28/06/2016.
//  Copyright © 2016 Peter Rule. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    // I commented this out as it caused a crash
    // pokemon objects are created elsewhere and passed to configureCell
    
    //var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        //self.pokemon = pokemon
        // also self's removed below
        
        nameLbl.text = pokemon.name.capitalizedString
        thumbImg.image = UIImage(named: "\(pokemon.pokedexId)")
    }
}
