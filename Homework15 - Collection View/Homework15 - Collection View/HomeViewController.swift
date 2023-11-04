//
//  ViewController.swift
//  Homework15 - Collection View
//
//  Created by salome on 03.11.23.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    //MARK: - View
    let mainStackView: UIStackView = {
        
        let mainStackView = UIStackView()
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.backgroundColor = .green
        mainStackView.axis = .vertical
        
        return mainStackView
    }()
    
    let headerStackView: UIStackView = {
        
        let headerStackView = UIStackView()
        headerStackView.translatesAutoresizingMaskIntoConstraints = false
        headerStackView.backgroundColor = .blue
        headerStackView.axis = .horizontal
        
        return headerStackView
    }()
    
    let iconForHeader: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Product Logo")
        return imageView
    }()
    
    let buttonForHeader: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Profile", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .orange
        return button
    }()
    
    let NewCinemasLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let filmCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 15
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .red
        return collectionView
    }()
    
    var allMovies = [
        Movie(image: UIImage(named: "Image") ?? UIImage(), name: "The Batman", category: .Act),
        Movie(image: UIImage(named: "Cover-2") ?? UIImage(), name: "Uncharted", category: .Adventure),
        Movie(image: UIImage(named: "Cover-3") ?? UIImage(), name: "The Exorcism of God", category: .Horror),
        Movie(image: UIImage(named: "Cover-4") ?? UIImage(), name: "Turning Red", category: .Comedy),
        Movie(image: UIImage(named: "Cover-5") ?? UIImage(), name: "Spider-Man: No Way Home", category: .Act),
        Movie(image: UIImage(named: "Cover") ?? UIImage(), name: "Morbius", category: .Act)
    ] {
        willSet {
            print("xxxxx")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupUI()
        collectionView.register(MovieCell.self, forCellWithReuseIdentifier:"MovieCell")
    }
    private func setupUI() {
        setupSubviews()
        setupMainStackView()
        setupHeaderStackView()
        setupImageView()
        setupButton()
        setupLabel()
        setupCollectionView()
        
        
    }
    
    private func setupSubviews() {
    view.addSubview(mainStackView)
    mainStackView.addArrangedSubview(headerStackView)
    headerStackView.addArrangedSubview(iconForHeader)
    headerStackView.addArrangedSubview(buttonForHeader)
    mainStackView.addArrangedSubview(NewCinemasLabel)
    mainStackView.addArrangedSubview(filmCollectionView)
    
}
    
    
   private func setupMainStackView() {
        mainStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        mainStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        mainStackView.spacing = 16
    }
    
    private func setupHeaderStackView(){
        headerStackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        headerStackView.distribution = .equalSpacing
    }
    
    private func setupImageView() {
        NSLayoutConstraint.activate([
            iconForHeader.heightAnchor.constraint(equalToConstant: 33),
            iconForHeader.widthAnchor.constraint(equalToConstant: 37)
        ])
    }
    
    private func setupButton() {
        buttonForHeader.widthAnchor.constraint(equalToConstant: 77).isActive = true
        buttonForHeader.heightAnchor.constraint(equalToConstant: 40).isActive = true
        buttonForHeader.layer.cornerRadius = 10
    }
    
    private func setupLabel() {
        NewCinemasLabel.textColor = .white
        NewCinemasLabel.font = UIFont.systemFont(ofSize: 24)
        NewCinemasLabel.text = "Now in Cinemas"
    }
    
   private func setupCollectionView() {
        filmCollectionView.delegate = self
        filmCollectionView.dataSource = self
//        filmCollectionView.register(FilmCell.self, forCellWithReuseIdentifier: "FilmCell")
        mainStackView.addArrangedSubview(filmCollectionView)
    }
    
    
}

