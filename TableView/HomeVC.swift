//
//  HomeVC.swift
//  TableView
//
//  Created by Ellington Cavalcante on 14/02/23.
//

import UIKit



class HomeVC: UIViewController {
    
    let homeScreen: HomeScreen = HomeScreen()
    var dataUser: [DataUser] = [DataUser(nameImage: "faixabranca", nameLabel: "Faixa Branca"),
                                DataUser(nameImage: "faixaazul", nameLabel: "Faixa Azul"),
                                DataUser(nameImage: "faixaroxa", nameLabel: "Faixa Roxa"),
                                DataUser(nameImage: "faixamarrom", nameLabel: "Faixa Marrom"),
                                DataUser(nameImage: "faixapreta", nameLabel: "Faixa Preta")]
    
    override func loadView() {
        view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen.configTableViewDelegate(delegate: self, dataSource: self)
    }
}

extension HomeVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataUser.count
    }
}

extension HomeVC: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: TableViewCell? = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setUpCell(data: dataUser[indexPath.row])
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 128
    }
}

    
    

