
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choiceA: UIButton!
    @IBOutlet weak var choiceB: UIButton!
    @IBOutlet weak var choiceC: UIButton!

    var quizContent = QuizContent()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        progressBar.progress = 0
       
    }

    @IBAction func AnswerBtnPressed(_ sender: UIButton) {
        let currentAnswer = sender.currentTitle!
        if quizContent.checkAnswer(currentAnswer)
        {
             sender.tintColor = UIColor.green
            
        } else{
            sender.tintColor = UIColor.red
        }
        quizContent.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
     @objc func updateUI(){
        questionLabel.text = quizContent.getQuestionText()
        choiceA.setTitle(quizContent.getQuestionAnswers()[0], for: .normal)
        choiceB.setTitle(quizContent.getQuestionAnswers()[1], for: .normal)
        choiceC.setTitle(quizContent.getQuestionAnswers()[2], for: .normal)

        choiceA.tintColor = UIColor.lightGray
        choiceB.tintColor = UIColor.lightGray
        choiceC.tintColor = UIColor.lightGray
        progressBar.progress = quizContent.getProgressBar()
        scoreLabel.text = "Score: \(quizContent.getScore())"

    }
   
    
}

