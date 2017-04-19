//
//  ViewController.swift
//  MHProgressButton
//
//  Created by Mohamed Emad Abdalla Hegab on 19.04.17.
//  Copyright © 2017 MohamedHegab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer: Timer?
    var i = 0.0

    @IBOutlet weak var progressButton: MHProgressButton!
    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(animated)
        setupButtonView()
    }

    func setupButtonView() {
        progressButton.layer.cornerRadius = progressButton.frame.height / 2
        progressButton.layer.borderColor = UIColor(colorLiteralRed: 46, green: 46, blue: 50, alpha: 1).cgColor
        progressButton.layer.borderWidth = 1
        progressButton.clipsToBounds = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startProgress() {
        i = 0.0
        progressButton.setTitle("Loading...", for: .normal)
        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }


    func update () {

        self.progressButton.linearLoadingWith(progress: CGFloat(i))
        i += 1
        if i > 100 {
            timer?.invalidate()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

