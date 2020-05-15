//
//  ResultsListViewController.swift
//  lastfm
//
//  Created by Joao Bastos on 12/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import UIKit
import RxSwift

class ResultsListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: VARS
    let cellReuseIdentifier:String = "resultsListCell"
    let albumPageSize:Int = 50
    
    private var disposeBag = DisposeBag()
    
    var viewModel: ResultsListProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ResultsListViewModel(repository: ResultsListRepository())
        bindOperations()
        self.showSpinner(onView: self.view)
        viewModel.getAlbums(tag:"hip-hop",page: "\(viewModel.pageNumber)")
        setupTableView()
        
    }
    
    private func setupTableView(){
        self.tableView.separatorStyle = .singleLine
        self.tableView.bounces = false
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.layoutMargins  = UIEdgeInsets.zero
        self.tableView.separatorColor = UIColor.black
        self.tableView.separatorStyle = .none
        self.tableView.tableHeaderView = nil
        tableView.cellLayoutMarginsFollowReadableWidth = false
        
        tableView.register(UINib.init(nibName: ResultsListCell.nibName(), bundle:Bundle.main), forCellReuseIdentifier: cellReuseIdentifier)
    }
    
    private func bindOperations() {
        
        viewModel.requestResult
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] response in
                self?.removeSpinner()
                self?.tableView.separatorStyle = .singleLine
                self?.tableView.reloadData()
                }, onError: { error in
                    self.removeSpinner()

                    if let errorServer = error as? NetworkError {
                        self.showAlert(message: errorServer.errorType?.description() ?? "", action: self.actionAlert())
                    }
                    
            }).disposed(by: disposeBag)
        
    }
    
    func actionAlert()-> UIAlertAction {
        
        return  UIAlertAction(title: "refresh",
                              style: .default,
                              handler: { [weak self] (action) -> Void in
                                self?.viewModel.getAlbums(tag:"hip-hop",page: "\(self?.viewModel.pageNumber ?? 1)")
        })
    }
    
    private func openAlbumDetail(album: Album, image: Data) {
        
        let repository = AlbumDetailRepository()
        let dependencies = AlbumDetailDependencies(album: album, image: image)
        let viewModel = AlbumDetailViewModel(repository: repository, dependencies: dependencies)
        let viewController = AlbumDetailViewController.initialize(with: viewModel)
        self.present(viewController, animated: true, completion: nil)
    }
    
}

extension ResultsListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.albumList.count;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ResultsListCell = self.tableView.dequeueReusableCell(withIdentifier:cellReuseIdentifier) as! ResultsListCell
        
        let album: Album = self.viewModel.albumList[indexPath.row]
        let image: Data = self.viewModel.downloadedImages[indexPath.row]
        
        cell.albumName.text = album.name
        cell.albumImage.image = UIImage(data: image)
        
        return cell
    }
}

//MARK: UITableViewControllerDelegate
extension ResultsListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        return nil;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let album: Album = self.viewModel.albumList[indexPath.row]
        let image: Data = self.viewModel.downloadedImages[indexPath.row]
        openAlbumDetail(album: album, image: image)
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if self.tableView.contentOffset.y >= (self.tableView.contentSize.height - (self.tableView.frame.size.height)){
            if ((viewModel.totalPages / albumPageSize) > (viewModel.pageNumber-10)) {
                viewModel.pageNumber+=1;
                self.showSpinner(onView: self.view)
                viewModel.getAlbums(tag:"hip-hop",page: String(viewModel.pageNumber))
            }
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.layoutMargins = UIEdgeInsets.zero
        cell.separatorInset = UIEdgeInsets.zero
    }
}
