//
//  AlbumDetailViewController.swift
//  lastfm
//
//  Created by Joao Bastos on 13/05/2020.
//  Copyright © 2020 Joao Bastos. All rights reserved.
//

import UIKit
import RxSwift

class AlbumDetailViewController : UIViewController {
    
    @IBOutlet weak var albumName: UILabel!
    
    @IBOutlet weak var trackCount: UILabel!
    @IBOutlet weak var albumCover: UIImageView!
    @IBOutlet weak var publishDate: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var listenersNum: UILabel!
    
    var viewModel: AlbumDetailProtocol!
    var disposeBag: DisposeBag = DisposeBag()
    
    override func viewDidLoad() {
        bindOperations()
        self.showSpinner(onView: self.view)
        viewModel.getAlbumDetail()
        viewModel.getArtistDetail()
    }
    
    static func initialize(with viewModel: AlbumDetailProtocol) -> AlbumDetailViewController {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = (mainStoryboard.instantiateViewController(withIdentifier: "albumDetailViewController") as? AlbumDetailViewController)!
        viewController.viewModel = viewModel
        return viewController
    }
    
    private func bindOperations() {
        
        viewModel.album
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] response in
                self?.removeSpinner()
                self?.setupAlbumDetails(album: response.album)
                
                }, onError: { error in
                    self.removeSpinner()
                    if let errorServer = error as? NetworkError {
                        self.showAlert(message: errorServer.errorType?.description() ?? "", action: self.refreshAlbumAlert())
                    }
            }).disposed(by: disposeBag)
        
        viewModel.artist
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { [weak self] response in
                
                self?.setupArtistDetails(artist: response.artist!)
                }, onError: { error in

            }).disposed(by: disposeBag)
        
    }
    
    func refreshAlbumAlert()-> UIAlertAction {
        
        return  UIAlertAction(title: "refresh",
                              style: .default,
                              handler: { [weak self] (action) -> Void in
                                self?.viewModel.getAlbumDetail()

        })
    }

    
    private func setupAlbumDetails(album: Album){
        
        self.albumName.text =   album.name
        self.trackCount.text = "Num tracks: " + "\(album.tracks?.track?.count ?? 1)"
        self.publishDate.text = "published: " + (album.wiki?.published ?? "-")
        let data: Data = viewModel.getDependencies().image
        self.albumCover.image = UIImage(data:data)
        
    }
    
    private func setupArtistDetails(artist: Artist) {
        self.artistName.text = artist.name
        self.listenersNum.text = "listeners: " + (artist.stats?.listeners ?? "-")
        
    }
    
}
