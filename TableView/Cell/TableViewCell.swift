//
//  TableViewCell.swift
//  TableView
//
//  Created by Ellington Cavalcante on 16/02/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    static let identifier: String = "TableViewCell"
    
    private lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        contentView.addSubview(userImageView)
        contentView.addSubview(nameLabel)
    }
    
    func setUpCell(data: DataUser) {
        nameLabel.text = data.nameLabel
        userImageView.image = UIImage(named: data.nameImage)
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
        
            userImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            userImageView.widthAnchor.constraint(equalToConstant: 80),
            userImageView.heightAnchor.constraint(equalToConstant: 80),
            
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 20),
            
            
        ])
    }
    
}
