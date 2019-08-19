import UIKit

enum Operator {
    case plus
    case minus
    case multiply
    case divide
    case none
}

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var currentNumber: Int = 0
    var resultNumber: Int = 0
    var tempNumber: Int = 0
    var ope: Operator = .none
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func calculate(rhs: Int, lhs: Int, ope: Operator) -> Int? {
        if rhs == 0 { return nil }
        var total: Int = 0
        switch ope {
        case .plus:
            total = lhs + rhs
        case .minus:
            total = lhs - rhs
        case .multiply:
            total = lhs * rhs
        case .divide:
            total = lhs / rhs
        case .none:
            return nil
        }
        return total
    }
}

extension ViewController {
    @IBAction func equal() {
        guard currentNumber != 0, let result = calculate(rhs: currentNumber, lhs: tempNumber, ope: ope) else { return }
        resultNumber += result
        currentNumber = 0
        tempNumber = 0
        ope = .none
        label.text = String(resultNumber)
    }
    
    @IBAction func clear() {
        ope = .none
        currentNumber = 0
        tempNumber = 0
        resultNumber = 0
        label.text = String(resultNumber)
    }
}


extension ViewController {
    
    @IBAction func plus() {
        
        if ope != .none {
            guard let result = calculate(rhs: currentNumber, lhs: tempNumber, ope: ope) else { return }
            resultNumber += result
            currentNumber = 0
            tempNumber = 0
            ope = .plus
            label.text = String(resultNumber)
            return
        }
        
        tempNumber = currentNumber
        currentNumber = 0
        ope = .plus
    }
    
    @IBAction func minus() {
        
        if ope != .none {
            guard let result = calculate(rhs: currentNumber, lhs: tempNumber, ope: ope) else { return }
            resultNumber += result
            currentNumber = 0
            tempNumber = 0
            ope = .plus
            label.text = String(resultNumber)
            return
        }
        
        tempNumber = currentNumber
        currentNumber = 0
        ope = .minus
    }
    
    @IBAction func multiply() {
        
        if ope != .none {
            guard let result = calculate(rhs: currentNumber, lhs: tempNumber, ope: ope) else { return }
            resultNumber += result
            currentNumber = 0
            tempNumber = 0
            ope = .plus
            label.text = String(resultNumber)
            return
        }
        
        tempNumber = currentNumber
        currentNumber = 0
        ope = .multiply
    }
    
    @IBAction func divide() {
        
        if ope != .none {
            guard let result = calculate(rhs: currentNumber, lhs: tempNumber, ope: ope) else { return }
            resultNumber += result
            currentNumber = 0
            tempNumber = 0
            ope = .plus
            label.text = String(resultNumber)
            return
        }
        
        tempNumber = currentNumber
        currentNumber = 0
        ope = .divide
    }
}

extension ViewController {
    @IBAction func select1() {
        currentNumber = currentNumber * 10 + 1
        label.text = String(currentNumber)
    }
    
    @IBAction func select2() {
        currentNumber = currentNumber * 10 + 2
        label.text = String(currentNumber)
    }
    
    @IBAction func select3() {
        currentNumber = currentNumber * 10 + 3
        label.text = String(currentNumber)
    }
    
    @IBAction func select4() {
        currentNumber = currentNumber * 10 + 4
        label.text = String(currentNumber)
    }
    
    @IBAction func select5() {
        currentNumber = currentNumber * 10 + 5
        label.text = String(currentNumber)
    }
    
    @IBAction func select6() {
        currentNumber = currentNumber * 10 + 6
        label.text = String(currentNumber)
    }
    
    @IBAction func select7() {
        currentNumber = currentNumber * 10 + 7
        label.text = String(currentNumber)
    }
    
    @IBAction func select8() {
        currentNumber = currentNumber * 10 + 8
        label.text = String(currentNumber)
    }
    
    @IBAction func select9() {
        currentNumber = currentNumber * 10 + 9
        label.text = String(currentNumber)
    }
    
    @IBAction func select0() {
        currentNumber = currentNumber * 10
        label.text = String(currentNumber)
    }
}
