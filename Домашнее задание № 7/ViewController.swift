//
//  ViewController.swift
//  Домашнее задание № 7
//
//  Created by User on 5/10/23.
//

import UIKit

class ViewController: UIViewController {

    private let scrollView = UIScrollView()
    
    private let contentView = UIView()
    
    private let label = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  setupLayout()
    }


}

private extension ViewController{
    func setupLayout() {
        configureScrollView()
        configureContetnView()
        prepareScrollView()
        configureLabel()
        addContentToScrollView()
    }
    func  configureScrollView(){
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.alwaysBounceVertical = true
        view.addSubview(scrollView)
    }
    func configureContetnView(){
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
    }
    func prepareScrollView(){
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
    }
    func configureLabel(){
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Scrollable content goes here"
        
    }
    func addContentToScrollView(){
        contentView.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 50),
            label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
