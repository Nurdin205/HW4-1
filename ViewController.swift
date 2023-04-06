//
//  ViewController.swift
//  HW4-1
//
//  Created by cpu on 4/4/23.
//

import UIKit
import
SnapKit
import Kingfisher

class ViewController: UIViewController {
    
    
    
    private lazy var tableView: UITableView = {   //1
        let view = UITableView()
        return view
    }()
    
    private var timeData: [Article] = []
    
    override func viewDidLoad() {    // здесь вызываем созданные функции, путем добавления.
        super.viewDidLoad()
        setupTableView()
        setuppConstraints()
        
  
    }
    func setupTableView(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        tableView.dataSource = self
    }
    func setuppConstraints(){
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview() //отоброжение на весь экран.
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20  // отвечает за количество ячеек.
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) // отображает то, что находится в мониторе
        cell.textLabel?.text = "Nurdin"
        
        return cell
    }
  
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
    
}

