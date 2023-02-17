//
//  HomeScreen.swift
//  TableView
//
//  Created by Ellington Cavalcante on 14/02/23.
//

import UIKit

class HomeScreen: UIView {
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " • FAIXAS DO JIU-JITSU • "
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .darkGray
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setUpConstraints()
        backgroundColor()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        addSubview(topLabel)
        addSubview(titleLabel)
        addSubview(tableView)
    }
    
    func backgroundColor() {
        backgroundColor = .white
    }
    
    func configTableViewDelegate(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            topLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 40),
            
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 55),
        
            tableView.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }
    
}
