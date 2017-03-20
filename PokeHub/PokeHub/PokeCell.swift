//
//  PokeCell.swift
//  PokeHub
//
//  Created by Dishant Kapadiya on 3/19/17.
//  Copyright © 2017 Dishant Kapadiya. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(_ pokemon: Pokemon) {
        self.pokemon = pokemon
        nameLabel.text = self.pokemon.name.capitalized
        thumbImage.image = UIImage(named: "\(pokemon.pokedexId)")
    }
    
}
