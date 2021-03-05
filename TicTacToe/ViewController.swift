//
//  ViewController.swift
//  TicTacToe
//
//  Created by Marco on 2021-03-03.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var topLeftImage: UIImageView!
    @IBOutlet weak var topCenterImage: UIImageView!
    @IBOutlet weak var topRightImage: UIImageView!
    @IBOutlet weak var centerRightImage: UIImageView!
    @IBOutlet weak var centerImage: UIImageView!
    @IBOutlet weak var centerLeftImage: UIImageView!
    @IBOutlet weak var bottomLeftImage: UIImageView!
    @IBOutlet weak var bottomCenterImage: UIImageView!
    @IBOutlet weak var bottomRightImage: UIImageView!
    @IBOutlet weak var winnerLabel: UILabel!

    @IBOutlet weak var topLeftButtonOutlet: UIButton!
    @IBOutlet weak var topCenterButtonOutlet: UIButton!
    @IBOutlet weak var topRightButtonOutlet: UIButton!
    @IBOutlet weak var centerLeftButtonOutlet: UIButton!
    @IBOutlet weak var centerButtonOutlet: UIButton!
    @IBOutlet weak var centerRightButtonOutlet: UIButton!
    @IBOutlet weak var bottomLeftButtonOutlet: UIButton!
    @IBOutlet weak var bottomCenterButtonOutlet: UIButton!
    @IBOutlet weak var bottomRightButtonOutlet: UIButton!
    
    
    var topLeftButtonClicked = ""
    var topCenterButtonClicked = ""
    var topRightButtonClicked = ""
    var centerLeftButtonClicked = ""
    var centerRightButtonClicked = ""
    var centerButtonClicked = ""
    var bottomLeftButtonClicked = ""
    var bottomCenterButtonClicked = ""
    var bottomRightButtonClicked = ""
    
    let circle = "circle"
    let cross = "xmark"
    
    var turn = 1
    var sign = "X"
    var winner = ""
    
    var buttonsPressed = 0
    
    func endGame(winner: String) {
        topLeftButtonOutlet.isEnabled = false
        topRightButtonOutlet.isEnabled = false
        topCenterButtonOutlet.isEnabled = false
        centerLeftButtonOutlet.isEnabled = false
        centerButtonOutlet.isEnabled = false
        centerRightButtonOutlet.isEnabled = false
        bottomLeftButtonOutlet.isEnabled = false
        bottomCenterButtonOutlet.isEnabled = false
        bottomRightButtonOutlet.isEnabled = false
        
        if winner == "X" {
            winnerLabel.text = "Red is the winner! 🎉"
            winnerLabel.textColor = UIColor.red
        } else if winner == "O" {
            winnerLabel.text = "Blue is the winner! 🎉"
            winnerLabel.textColor = UIColor.blue
        } else if winner == "Draw" {
            winnerLabel.text = "Draw"
            winnerLabel.textColor = UIColor.gray
        }
    }
    
    func checkForGameEnded() {
        // print("GAME HAS ENDED")
        print("Top left Button : \(topLeftButtonClicked)")
        print("Top center Button : \(topCenterButtonClicked)")
        print("Top right Button : \(topRightButtonClicked)")
        print("center left Button : \(centerLeftButtonClicked)")
        print("center Button : \(centerButtonClicked)")
        print("center right Button : \(centerRightButtonClicked)")
        print("bottom left Button : \(bottomLeftButtonClicked)")
        print("bottom Center Button : \(bottomCenterButtonClicked)")
        print("bottom right Button : \(bottomRightButtonClicked)")
        
        if topLeftButtonClicked == "X" && topCenterButtonClicked == "X" && topRightButtonClicked == "X" {
            winner = "X"
        } else if centerLeftButtonClicked == "X" && centerButtonClicked == "X" && centerRightButtonClicked == "X" {
            winner = "X"
        } else if bottomLeftButtonClicked == "X" && bottomCenterButtonClicked == "X" && bottomRightButtonClicked == "X" {
            winner = "X"
        } else if topLeftButtonClicked == "X" && centerLeftButtonClicked == "X" && bottomLeftButtonClicked == "X" {
            winner = "X"
        } else if topCenterButtonClicked == "X" && centerButtonClicked == "X" && bottomCenterButtonClicked == "X" {
            winner = "X"
        } else if topRightButtonClicked == "X" && centerRightButtonClicked == "X" && bottomRightButtonClicked == "X" {
            winner = "X"
        } else if topLeftButtonClicked == "X" && centerButtonClicked == "X" && bottomRightButtonClicked == "X" {
            winner = "X"
        } else if topRightButtonClicked == "X" && centerButtonClicked == "X" && bottomLeftButtonClicked == "X" {
            winner = "X"
        
        } else if topLeftButtonClicked == "O" && topCenterButtonClicked == "O" && topRightButtonClicked == "O" {
            winner = "O"
        } else if centerLeftButtonClicked == "O" && centerButtonClicked == "O" && centerRightButtonClicked == "O" {
            winner = "O"
        } else if bottomLeftButtonClicked == "O" && bottomCenterButtonClicked == "O" && bottomRightButtonClicked == "O" {
            winner = "O"
        } else if topLeftButtonClicked == "O" && centerLeftButtonClicked == "O" && bottomLeftButtonClicked == "O" {
            winner = "O"
        } else if topCenterButtonClicked == "O" && centerButtonClicked == "O" && bottomCenterButtonClicked == "O" {
            winner = "O"
        } else if topRightButtonClicked == "O" && centerRightButtonClicked == "O" && bottomRightButtonClicked == "O" {
            winner = "O"
        } else if topLeftButtonClicked == "O" && centerButtonClicked == "O" && bottomRightButtonClicked == "O" {
            winner = "O"
        } else if topRightButtonClicked == "O" && centerButtonClicked == "O" && bottomLeftButtonClicked == "O" {
            winner = "O"
        } else {
            if buttonsPressed >= 9 {
                winner = "Draw"
            } else {
                print("The game goes on")
            }
        }
        
        if winner == "X" {
            endGame(winner: "X")
        } else if winner == "O"{
            endGame(winner: "O")
        } else if winner == "Draw" {
            endGame(winner: "Draw")
        }
        
        
    }
    
    
    func checkTurn() {
        switch turn {
        case 1:
            sign = "X"
            turn += 1
            break
        case 2:
            sign = "O"
            turn += 1
            break
        case 3:
            sign = "X"
            turn += 1
            break
        case 4:
            sign = "O"
            turn += 1
            break
        case 5:
            sign = "X"
            turn += 1
            break
        case 6:
            sign = "O"
            turn += 1
            break
        case 7:
            sign = "X"
            turn += 1
            break
        case 8:
            sign = "O"
            turn += 1
            break
        case 9:
            sign = "X"
            turn += 1
            break
            
        default:
            sign = "X"
        }
    }

    
    func stopButtons(button: UIButton) {
        let disableButton = button as UIButton
        disableButton.isEnabled = false
        
        checkForGameEnded()
        
    }
    
    func handleImage(selectedImage: UIImageView, color: UIColor, image: UIImage?) {
        selectedImage.image = image
        selectedImage.tintColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func topLeftButton(_ sender: UIButton) {
        print("Top left button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: topLeftImage, color: UIColor.red, image: UIImage(systemName: cross))
            topLeftButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: topLeftImage, color: UIColor.blue, image: UIImage(systemName: circle))
            topLeftButtonClicked = "O"
            
        }
        
        buttonsPressed += 1
        
        
        stopButtons(button: sender)
        
    }
    
    @IBAction func topCenterButton(_ sender: UIButton) {
        print("Top center button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: topCenterImage, color: UIColor.red, image: UIImage(systemName: cross))
            topCenterButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: topCenterImage, color: UIColor.blue, image: UIImage(systemName: circle))
            topCenterButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
    }
    
    @IBAction func topRightButton(_ sender: UIButton) {
        print("Top right button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: topRightImage, color: UIColor.red, image: UIImage(systemName: cross))
            topRightButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: topRightImage, color: UIColor.blue, image: UIImage(systemName: circle))
            topRightButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
        
    }
    
    @IBAction func centerLeftButton(_ sender: UIButton) {
        print("center left button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: centerLeftImage, color: UIColor.red, image: UIImage(systemName: cross))
            centerLeftButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: centerLeftImage, color: UIColor.blue, image: UIImage(systemName: circle))
            centerLeftButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
        
    }
    
    @IBAction func centerButton(_ sender: UIButton) {
        print("center button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: centerImage, color: UIColor.red, image: UIImage(systemName: cross))
            centerButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: centerImage, color: UIColor.blue, image: UIImage(systemName: circle))
            centerButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
        
    }
    
    @IBAction func centerRightButton(_ sender: UIButton) {
        print("center right button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: centerRightImage, color: UIColor.red, image: UIImage(systemName: cross))
            centerRightButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: centerRightImage, color: UIColor.blue, image: UIImage(systemName: circle))
            centerRightButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
        
        
    }
    
    @IBAction func bottomLeftButton(_ sender: UIButton) {
        print("bottom left button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: bottomLeftImage, color: UIColor.red, image: UIImage(systemName: cross))
            bottomLeftButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: bottomLeftImage, color: UIColor.blue, image: UIImage(systemName: circle))
            bottomLeftButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
        
    }
    
    
    @IBAction func bottomCenterButton(_ sender: UIButton) {
        print("bottom center button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: bottomCenterImage, color: UIColor.red, image: UIImage(systemName: cross))
            bottomCenterButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: bottomCenterImage, color: UIColor.blue, image: UIImage(systemName: circle))
            bottomCenterButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
        
    }
    
    @IBAction func bottomRightButton(_ sender: UIButton) {
        print("Bottom right button clicked")
        
        checkTurn()
        if sign == "X" {
            handleImage(selectedImage: bottomRightImage, color: UIColor.red, image: UIImage(systemName: cross))
            bottomRightButtonClicked = "X"
        } else if sign == "O" {
            handleImage(selectedImage: bottomRightImage, color: UIColor.blue, image: UIImage(systemName: circle))
            bottomRightButtonClicked = "O"
        }
        buttonsPressed += 1
        
        stopButtons(button: sender)
        
    }
    
    
}

