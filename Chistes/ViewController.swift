//
//  ViewController.swift
//  Chistes
//
//  Created by Christians Bonilla on 29/01/26.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: MainViewModel!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var Button: UIButton!
    
    @IBAction func ButtonAction(_ sender: Any) {
        getJokes()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = MainViewModel()
        getJokes()
        TableView.register(
            UINib(nibName: "ChuckNorrisCell", bundle: nil),
            forCellReuseIdentifier: "ChuckNorrisJokes"
        )
    }
    
    func getJokes() {
        Task {
            await viewModel.getJokes()
            await MainActor.run {
                TableView.reloadData()
                scrollToLastRow()
            }
        }
    }
    
    private func scrollToLastRow(animated: Bool = true) {
        let lastRow = viewModel.jokes.count - 1
        guard lastRow >= 0 else { return }
        
        let indexPath = IndexPath(row: lastRow, section: 0)
        TableView.scrollToRow(
            at: indexPath,
            at: .bottom,
            animated: animated
        )
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.jokes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let joke = viewModel.jokes[indexPath.row]
        let cell =
        tableView.dequeueReusableCell(
            withIdentifier: "ChuckNorrisJokes",
            for: indexPath
        ) as! ChuckNorrisCell
        cell.logoImage.loadFrom(urlString: joke.icon_url ?? "")
        cell.Joke.text = joke.value ?? ""
        return cell
    }
    
}
