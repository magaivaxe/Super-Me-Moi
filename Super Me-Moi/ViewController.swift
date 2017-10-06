//  Super Me-Moi
//
//  Created by Marcos Gomes on 17-09-30.
//  Copyright © 2017 Nintendo. All rights reserved.

//----------
import UIKit
import AVFoundation
//----------
class ViewController: UIViewController
{
	//-------- FRONTS AND BACKS VIEWS --------
	@IBOutlet weak var back_1: UIView!
	@IBOutlet weak var front_1: UIView!
	@IBOutlet weak var back_2: UIView!
	@IBOutlet weak var front_2: UIView!
	@IBOutlet weak var back_3: UIView!
	@IBOutlet weak var front_3: UIView!
	@IBOutlet weak var back_4: UIView!
	@IBOutlet weak var front_4: UIView!
	@IBOutlet weak var back_5: UIView!
	@IBOutlet weak var front_5: UIView!
	@IBOutlet weak var back_6: UIView!
	@IBOutlet weak var front_6: UIView!
	@IBOutlet weak var back_7: UIView!
	@IBOutlet weak var front_7: UIView!
	@IBOutlet weak var back_8: UIView!
	@IBOutlet weak var front_8: UIView!
	@IBOutlet weak var back_9: UIView!
	@IBOutlet weak var front_9: UIView!
	@IBOutlet weak var back_10: UIView!
	@IBOutlet weak var front_10: UIView!
	@IBOutlet weak var back_11: UIView!
	@IBOutlet weak var front_11: UIView!
	@IBOutlet weak var back_12: UIView!
	@IBOutlet weak var front_12: UIView!
	@IBOutlet weak var back_13: UIView!
	@IBOutlet weak var front_13: UIView!
	@IBOutlet weak var back_14: UIView!
	@IBOutlet weak var front_14: UIView!
	@IBOutlet weak var back_15: UIView!
	@IBOutlet weak var front_15: UIView!
	@IBOutlet weak var back_16: UIView!
	@IBOutlet weak var front_16: UIView!
	@IBOutlet weak var back_17: UIView!
	@IBOutlet weak var front_17: UIView!
	@IBOutlet weak var back_18: UIView!
	@IBOutlet weak var front_18: UIView!
	@IBOutlet weak var back_19: UIView!
	@IBOutlet weak var front_19: UIView!
	@IBOutlet weak var back_20: UIView!
	@IBOutlet weak var front_20: UIView!
	//----------------------------------------
	
	//--------- TOTAL RESET'S VIEW -----------
	@IBOutlet weak var resetView: UIView!
	@IBOutlet weak var superView: UIView!
	@IBOutlet weak var bravoView: UIView!
	//----------------------------------------
	
	//---------- CARDS IMAGE VIEWS -----------
	@IBOutlet weak var imgView_1: UIImageView!
	@IBOutlet weak var imgView_2: UIImageView!
	@IBOutlet weak var imgView_3: UIImageView!
	@IBOutlet weak var imgView_4: UIImageView!
	@IBOutlet weak var imgView_5: UIImageView!
	@IBOutlet weak var imgView_6: UIImageView!
	@IBOutlet weak var imgView_7: UIImageView!
	@IBOutlet weak var imgView_8: UIImageView!
	@IBOutlet weak var imgView_9: UIImageView!
	@IBOutlet weak var imgView_10: UIImageView!
	@IBOutlet weak var imgView_11: UIImageView!
	@IBOutlet weak var imgView_12: UIImageView!
	@IBOutlet weak var imgView_13: UIImageView!
	@IBOutlet weak var imgView_14: UIImageView!
	@IBOutlet weak var imgView_15: UIImageView!
	@IBOutlet weak var imgView_16: UIImageView!
	@IBOutlet weak var imgView_17: UIImageView!
	@IBOutlet weak var imgView_18: UIImageView!
	@IBOutlet weak var imgView_19: UIImageView!
	@IBOutlet weak var imgView_20: UIImageView!
	//----------------------------------------
	
	//---------------- CARDS -----------------
	@IBOutlet weak var card_1: UIView!
	@IBOutlet weak var card_2: UIView!
	@IBOutlet weak var card_3: UIView!
	@IBOutlet weak var card_4: UIView!
	@IBOutlet weak var card_5: UIView!
	@IBOutlet weak var card_6: UIView!
	@IBOutlet weak var card_7: UIView!
	@IBOutlet weak var card_8: UIView!
	@IBOutlet weak var card_9: UIView!
	@IBOutlet weak var card_10: UIView!
	@IBOutlet weak var card_11: UIView!
	@IBOutlet weak var card_12: UIView!
	@IBOutlet weak var card_13: UIView!
	@IBOutlet weak var card_14: UIView!
	@IBOutlet weak var card_15: UIView!
	@IBOutlet weak var card_16: UIView!
	@IBOutlet weak var card_17: UIView!
	@IBOutlet weak var card_18: UIView!
	@IBOutlet weak var card_19: UIView!
	@IBOutlet weak var card_20: UIView!
	//----------------------------------------
	
	//============== VARIABLES ===============
	
	var arrayOfAllImgViews: [UIImageView]!		/* to func setImagesToCards() */
	
	var arrayOfCharacters: [String]!			/* to func randomCharacters() */
	var arrayOfCharactersToCount: [String] = []
	var arrayOfRandomCharacters: [String] = []
	
	var arrayOfChosenCards: [String] = []		/* to func verification() */
	var arrayOfAllCards: [UIView]!
	var arrayOfCards: [UIView] = []				/* and to func hideCards() */
	
	var arrayOfAllBacks: [UIView]!				/* to func reflipCards() */
	var arrayOfAllFronts: [UIView]!				/* and func resetCards() */
	var arrayToShowBacks: [UIView] = []
	var arrayToHideFronts: [UIView] = []
	
	var arrayOfCardsToReset: [String] = []		/* to check and reset the game*/
	
	var audioBackground = AVAudioPlayer()		/* to play SFX and music */
	var audioCoin = AVAudioPlayer()
	var audioClear = AVAudioPlayer()
	
	//========================================
	
	//------------ LOAD THE APP --------------
	override func viewDidLoad()
	{
		super.viewDidLoad()
		arrayOfCharacters = ["bomb.png", "flower.png", "goomba.png", "luigi.png", "mario.png",
		                     "mushroom.png", "peach.png", "toad.png", "toadette.png", "yoshi.png",
		                     "bomb.png", "flower.png", "goomba.png", "luigi.png", "mario.png",
		                     "mushroom.png", "peach.png", "toad.png", "toadette.png", "yoshi.png"]
		
		arrayOfAllImgViews = [imgView_1, imgView_2, imgView_3, imgView_4, imgView_5,
		                      imgView_6, imgView_7, imgView_8, imgView_9, imgView_10,
		                      imgView_11, imgView_12, imgView_13, imgView_14, imgView_15,
		                      imgView_16, imgView_17, imgView_18, imgView_19, imgView_20]
		
		arrayOfAllCards = [card_1, card_2, card_3, card_4, card_5,
		                   card_6, card_7, card_8, card_9, card_10,
		                   card_11, card_12, card_13, card_14, card_15,
		                   card_16, card_17, card_18, card_19, card_20]
		
		arrayOfAllBacks = [back_1, back_2, back_3, back_4, back_5,
		                   back_6, back_7, back_8, back_9, back_10,
		                   back_11, back_12, back_13, back_14, back_15,
		                   back_16, back_17, back_18, back_19, back_20]
		
		arrayOfAllFronts = [front_1, front_2, front_3, front_4, front_5,
		                    front_6, front_7, front_8, front_9, front_10,
		                    front_11, front_12, front_13, front_14, front_15,
		                    front_16, front_17, front_18, front_19, front_20]
		
		randomCharacters()		/* choice randomly and set images to cards */
		setImagesToCards()
		
		do						/* to set the SFX and play music */
		{
			audioCoin = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "coin", ofType: "wav")!))
			audioCoin.prepareToPlay()
			
			audioClear = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "clear", ofType: "mp3")!))
			audioClear.prepareToPlay()
			
			audioBackground = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "bgmusic", ofType: "mp3")!))
			audioBackground.play()
			
		}
		catch					/* if will be un error it could be print */
		{
			print(error)
		}
		
		Timer.scheduledTimer(timeInterval: 0.5,				/* delai to start the game */
		                     target: self,
		                     selector: (#selector(hiCards)),
		                     userInfo: nil,
		                     repeats: false)
	}
	//----------------------------------------
	
	//----------- BUTTONS OF CARDS------------
	@IBAction func show_cards(_ sender: UIButton)
	{
		if audioBackground.isPlaying == false	/* to repeat the music if its ended */
		{
			audioBackground.play()
		}
		
		if arrayToHideFronts.count == 2 		/* stop after two choices */
		{
			return
		}
		switch sender.tag 						/* click and flip cards */
		{
		case 0:
			flipCard(from: front_1, to: back_1)
		case 1:
			flipCard(from: front_2, to: back_2)
		case 2:
			flipCard(from: front_3, to: back_3)
		case 3:
			flipCard(from: front_4, to: back_4)
		case 4:
			flipCard(from: front_5, to: back_5)
		case 5:
			flipCard(from: front_6, to: back_6)
		case 6:
			flipCard(from: front_7, to: back_7)
		case 7:
			flipCard(from: front_8, to: back_8)
		case 8:
			flipCard(from: front_9, to: back_9)
		case 9:
			flipCard(from: front_10, to: back_10)
		case 10:
			flipCard(from: front_11, to: back_11)
		case 11:
			flipCard(from: front_12, to: back_12)
		case 12:
			flipCard(from: front_13, to: back_13)
		case 13:
			flipCard(from: front_14, to: back_14)
		case 14:
			flipCard(from: front_15, to: back_15)
		case 15:
			flipCard(from: front_16, to: back_16)
		case 16:
			flipCard(from: front_17, to: back_17)
		case 17:
			flipCard(from: front_18, to: back_18)
		case 18:
			flipCard(from: front_19, to: back_19)
		case 19:
			flipCard(from: front_20, to: back_20)
		default:
			break
		}
		arrayOfCards.append(arrayOfAllCards[sender.tag]) 				/* Association button(tag x) and card_(x+1) */
		arrayOfChosenCards.append(arrayOfRandomCharacters[sender.tag])  /* Addition for verification */
		
		arrayToShowBacks.append(arrayOfAllBacks[sender.tag])			/* Add for reset-reflip, and stop choices */
		arrayToHideFronts.append(arrayOfAllFronts[sender.tag])
		
		verification()													/* call func verification*/
	}
	//----------------------------------------
	
	//-------------- FLIP CARDS --------------
	func flipCard(from: UIView, to: UIView)		/* Do the flip's cards */
	{
		let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
		
		UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations:
		{
			from.isHidden = true
		})
		
		UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations:
		{
			to.isHidden = false
		})
	}
	
	func flipGoodbye(from: UIView, to: UIView)	/* Do the flip and hide the cards */
	{
		let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromRight, .showHideTransitionViews]
		
		UIView.transition(with: from, duration: 1.0, options: transitionOptions, animations:
			{
				from.isHidden = false
		})
		
		UIView.transition(with: to, duration: 1.0, options: transitionOptions, animations:
			{
				to.isHidden = true
		})
	}
	
	//----------------------------------------
	
	//---------- SET IMAGES TO VIEWS ---------
	func setImagesToCards()						/* Interpoled channel to set images to cards after randomly choices */
	{
		var number = 0
		for imgView in arrayOfAllImgViews
		{
			imgView.image = UIImage(named: arrayOfRandomCharacters[number])
			number = number + 1
		}
	}
	//----------------------------------------
	
	//-------- IMAGE'S RANDOM CHOICE ---------
	func randomCharacters()
	{
		arrayOfRandomCharacters = []							/* to empty the array for game reset*/
		arrayOfCharactersToCount = []
		
		arrayOfCharactersToCount = arrayOfCharacters			/* to fill the array again for game reset */
		
		let numberOfCharacters = arrayOfCharactersToCount.count
		for _ in 1...numberOfCharacters
		{
			let randomNumber = Int(arc4random_uniform(UInt32(arrayOfCharactersToCount.count)))
			arrayOfRandomCharacters.append(arrayOfCharactersToCount[randomNumber])
			arrayOfCharactersToCount.remove(at: randomNumber)
		}
	}
	//----------------------------------------
	
	//----------- MATCH VERIFICATION ---------
	func verification()
	{
		if arrayOfChosenCards.count == 2
		{
			if arrayOfChosenCards[0] == arrayOfChosenCards[1]
			{
				Timer.scheduledTimer(timeInterval: 2,
				                     target: self,
				                     selector: (#selector(hideCards)),
				                     userInfo: nil,
				                     repeats: false)
		
				arrayOfCardsToReset.append(arrayOfChosenCards[0])		/* Add to count and to show reset button */
				arrayOfCardsToReset.append(arrayOfChosenCards[1])
				
				if arrayOfCardsToReset.count == arrayOfAllCards.count 	/* Verification to call reset button */
				{
					showResetButton()
				}
			}
			else
			{
				arrayOfCards = []
			}
			arrayOfChosenCards = []
		}
		resetCards()
	}
	//----------------------------------------
	
	//---------- SHOW RESET IF TRUE ----------
	func showResetButton()
	{
		
		arrayOfCardsToReset = []						/* to empty the array for game reset in the after time*/
		
		Timer.scheduledTimer(timeInterval: 3,
		                     target: self,
		                     selector: (#selector(flipReset)),
		                     userInfo: nil,
		                     repeats: false)
	}
	//----------------------------------------
	
	//------------ FLIP RESET CARD -----------
	@objc func flipReset()
	{
	    audioBackground.stop()							/* to stop the music and play the audio of VICTORY! */
		audioClear.play()
	
		flipCard(from: resetView, to: resetView)		/* show reset button */
		flipCard(from: superView, to: superView)		/* show final message */
		flipCard(from: bravoView, to: bravoView)
	}
	//----------------------------------------
	
	//------------ RESET BUTTON --------------
	@IBAction func resetPow(_ sender: UIButton)
	{
		randomCharacters()								/* choice randomly and set images to cards again */
		setImagesToCards()
		
		audioClear.stop()								/* to stop the clear audio and replay the music */
		audioBackground.play()
		
		flipGoodbye(from: resetView, to: resetView)		/* hide reset button */
		flipGoodbye(from: superView, to: superView)		/* hide final message */
		flipGoodbye(from: bravoView, to: bravoView)
		
		Timer.scheduledTimer(timeInterval: 1,
		                     target: self,
		                     selector: (#selector(hiCards)),
		                     userInfo: nil,
		                     repeats: false)
	}
	//----------------------------------------
	
	//----------- SHOW ALL CARDS -------------
	
	@objc func hiCards()
	{
		for index in 0..<arrayOfAllCards.count
		{
			flipCard(from: arrayOfAllCards[index], to: arrayOfAllCards[index])
		}
	}
	//----------------------------------------
	
	//-------- HIDE THE CARDS IF TRUE --------
	@objc func hideCards()
	{
		audioCoin.play()								/* sound if match */
		flipGoodbye(from: arrayOfCards[0], to: arrayOfCards[0])
		flipGoodbye(from: arrayOfCards[1], to: arrayOfCards[1])
		arrayOfCards = []
	}
	//----------------------------------------
	
	//-------------- RESET CARDS -------------
	func resetCards()
	{
		if arrayToShowBacks.count == 2
		{
			Timer.scheduledTimer(timeInterval: 2,
			                     target: self,
			                     selector: (#selector(reflipCards)),
			                     userInfo: nil,
			                     repeats: false)
		}
	}
	//----------------------------------------
	
	//------------- REFLIP CARDS -------------
	@objc func reflipCards()
	{
		for index in 0..<arrayToShowBacks.count
		{
			flipCard(from: arrayToShowBacks[index], to: arrayToHideFronts[index])
		}
		arrayToShowBacks = []
		arrayToHideFronts = []
	}
	//----------------------------------------
}


































