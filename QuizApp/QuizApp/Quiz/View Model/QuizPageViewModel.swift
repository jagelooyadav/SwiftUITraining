//
//  QuizPageViewModel.swift
//  QuizApp
//
//  Created by Jageloo Yadav on 19/04/22.
//

import Foundation

class QuizPageViewModel: ObservableObject {
    @Published var questions: [QuestionViewModel] = []
    @Published private var randomWord: [String: String] = [:]
    @Published private var currentQuestionIndex = -1
    
    var shouldShowNext: Bool {
        return questions.count < 10
    }
    
    var shouldShowPrev: Bool {
        currentQuestionIndex > 0
    }
    
    @Published var shouldDisableNextButton: Bool = true
    
    func reset() {
        questions.removeAll()
        currentQuestionIndex = 0
    }
    
    func observeQuestionSelection() {
        guard let currentQuestion = currentQuestion else { return }
        for question in currentQuestion.choices {
            question.action = { questionItemData in
                guard let questionItemData = questionItemData else { return }
                if questionItemData.isSelected {
                    // Nothing to do
                } else {
                    questionItemData.isSelected = true
                    self.shouldDisableNextButton = false
                    let remainigns = currentQuestion.choices.filter { $0.index != questionItemData.index }
                    for item in remainigns {
                        item.isSelected = false
                    }
                }
            }
        }
    }
    
    func fetchQuestionAndAnswers() {
        if currentQuestionIndex < self.questions.count - 2 {
            currentQuestionIndex = currentQuestionIndex + 1
            self.currentQuestion = self.questions[currentQuestionIndex]
            return
        }
        if let url = Bundle.main.url(forResource:"dictionary", withExtension: "plist") {
           do {
             let data = try Data(contentsOf:url)
               var words = try PropertyListSerialization.propertyList(from: data, format: nil) as! [[String: String]]
               if let randomWord = words.randomSelection(count: 1)?.first! {
                   words.remove(at: words.firstIndex(of: randomWord)!)
                   var ans = words.randomSelection(count: 4)
                   ans?.insert(randomWord, at: Int(arc4random()) % 4)
                   self.randomWord = randomWord
                   if let answers = ans, let randomQuestionHeading = randomWord["description"] {
                       var index = 0
                       let questionsTemp: [QuestionItemViewModel] = answers.compactMap { dictionary in
                           if let word = dictionary["word"] {
                               let item = QuestionItemViewModel(title: word, isSelected: false, index: index)
                               index += 1
                               return item
                           }
                           return nil
                       }
                       let newQ = QuestionViewModel(question: randomQuestionHeading, choices: questionsTemp)
                       print("new qustion has been created === \(newQ)")
                       self.currentQuestion = newQ
                       self.questions.append(newQ)
                       print("questions.count === \(questions.count)")
                       currentQuestionIndex = questions.count - 1
                       shouldDisableNextButton = true
                   }
               }
               
           } catch {
              print(error)
           }
        }
    }
    
    func goToPrevious() {
        currentQuestionIndex = currentQuestionIndex > 0 ? currentQuestionIndex - 1 : 0
        self.currentQuestion = self.questions[currentQuestionIndex]
        shouldDisableNextButton = self.currentQuestion?.choices.filter { $0.isSelected }.isEmpty ?? false
    }
    
    @Published var currentQuestion: QuestionViewModel?
    
    var screenTitle: String {
        return "Qustions"
    }
}

extension Array {
    func randomSelection(count: Int) -> [[String: String]]? {
        if count >= self.count {
            return nil
        } else if self.count == count {
            return self as? [[String: String]]
        }
        var selections: Set<[String: String]> = []
        while selections.count < count {
            let obj = self[Int(arc4random()) % self.count]
            selections.insert(obj as! [String : String])
        }
        return (selections as NSSet).allObjects as? [[String: String]]
    }
}
