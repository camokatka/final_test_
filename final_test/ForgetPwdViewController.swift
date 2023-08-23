import UIKit

class ForgetPwdViewController: UIViewController {
    
    
    private let lockImage = UIImageView(image: UIImage(named: "lock"))
    
    private let mainTextField = MakerView.shared.makeTextField(placeholder: "erp001",
                                                               cornerRadius: 10,
                                                               backgroundColor: .systemGray)
    
    private let btmView = MakerView.shared.makeView()
    
    private let troubleLabel = MakerView.shared.makeLabel(text: "Trouble Logging in?",
                                                          textColor: .white,
                                                          font: .systemFont(ofSize: 24, weight: .bold))
    
    private let littleInLabel = MakerView.shared.makeLabel(text: "Enter your email or  mobile number and we'll send you a OTP to get back into your account.",
                                                           textColor: .white,
                                                           font: .systemFont(ofSize: 11, weight: .regular))
    

    
    private let submitButton = MakerView.shared.makeButton(title: "Submit",
                                                           backgroundColor: Constants.submitButtonColor)
    
    private let idLabel = MakerView.shared.makeLabel(text: "Employee Id / Email")
    
    private let idTextField = MakerView.shared.makeTextField(placeholder: "erp001",
                                                               cornerRadius: 10)
    
    private let idBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let numberTextField = MakerView.shared.makeTextField(placeholder: "enter your mobile number or Email / id",
                                                                 borderColor: .black,
                                                                 cornerRadius: 10)
        
    private let OTPButton = MakerView.shared.makeButton(title: "Get OTP",
                                                        backgroundColor: Constants.OTPButtonColor)
    

    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 15
        return stack
    }()
    
    private let labelX1 = MakerView.shared.makeLabel(text: "X",
                                                    textColor: .black,
                                                    font: .systemFont(ofSize: 32),
                                                    borderwidth: 1.0,
                                                    bordercolor: .black
                                                    )
    
    private let labelX2 = MakerView.shared.makeLabel(text: "X",
                                                    textColor: .black,
                                                    font: .systemFont(ofSize: 32),
                                                    borderwidth: 1.0,
                                                    bordercolor: .black
                                                    )
    
    private let labelX3 = MakerView.shared.makeLabel(text: "X",
                                                    textColor: .black,
                                                    font: .systemFont(ofSize: 32),
                                                    borderwidth: 1.0,
                                                    bordercolor: .black
                                                    )
    
    private let labelX4 = MakerView.shared.makeLabel(text: "X",
                                                    textColor: .black,
                                                    font: .systemFont(ofSize: 32),
                                                    borderwidth: 1.0,
                                                    bordercolor: .black
                                                    )
    
    private let labelX5 = MakerView.shared.makeLabel(text: "X",
                                                    textColor: .black,
                                                    font: .systemFont(ofSize: 32),
                                                    borderwidth: 1.0,
                                                    bordercolor: .black
                                                    )
    
    private let labelX6 = MakerView.shared.makeLabel(text: "X",
                                                    textColor: .black,
                                                    font: .systemFont(ofSize: 32),
                                                    borderwidth: 1.0,
                                                    bordercolor: .black
                                                    )
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initUI()
        configurateLabel()
        configurateSubmitButton()
        configurateId()
        configurateStack()
        
    }
    
    private func initUI() {
        
        view.backgroundColor = Constants.backgroundColor
        
        view.addSubview(lockImage)
        lockImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            lockImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lockImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
        ])
        
        view.addSubview(mainTextField)
        mainTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mainTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            mainTextField.topAnchor.constraint(equalTo: lockImage.bottomAnchor, constant: 30)
        ])
        
        view.addSubview(btmView)
        btmView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btmView.heightAnchor.constraint(equalToConstant: 450),
            btmView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            btmView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            btmView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    private func configurateLabel() {
        
        view.addSubview(troubleLabel)
        troubleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            troubleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            troubleLabel.topAnchor.constraint(equalTo: mainTextField.bottomAnchor, constant: 30)
        ])
        
        view.addSubview(littleInLabel)
        littleInLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            littleInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            littleInLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            littleInLabel.topAnchor.constraint(equalTo: troubleLabel.bottomAnchor, constant: 5)
        ])
    }
    
    
    private func configurateSubmitButton() {
        
        btmView.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            submitButton.centerXAnchor.constraint(equalTo: btmView.centerXAnchor),
            submitButton.bottomAnchor.constraint(equalTo: btmView.bottomAnchor, constant: -60),
            submitButton.heightAnchor.constraint(equalToConstant: 35),
            submitButton.widthAnchor.constraint(equalToConstant: 95)
        ])
        
        submitButton.addTarget(self, action: #selector(submit), for: .touchUpInside)
    }
    
    private func configurateId() {
        
        btmView.addSubview(idLabel)
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            idLabel.topAnchor.constraint(equalTo: btmView.topAnchor, constant: 30)
        ])
        
        btmView.addSubview(idTextField)
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            idTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            idTextField.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(idBorderView)
        idBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idBorderView.heightAnchor.constraint(equalToConstant: 1),
            idBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            idBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            idBorderView.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            numberTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            numberTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            numberTextField.topAnchor.constraint(equalTo: idBorderView.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(OTPButton)
        OTPButton.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            OTPButton.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            OTPButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 15),
            OTPButton.heightAnchor.constraint(equalToConstant: 35),
            OTPButton.widthAnchor.constraint(equalToConstant: 95)
        ])
    }
    
    private func configurateStack() {
        
        btmView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: btmView.centerXAnchor),
            //stackView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            stackView.bottomAnchor.constraint(equalTo: submitButton.topAnchor, constant: -30)
        ])
        
        labelX1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelX1.widthAnchor.constraint(equalToConstant: 40),
            labelX1.heightAnchor.constraint(equalToConstant: 40)
        ])
        labelX2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelX2.widthAnchor.constraint(equalToConstant: 40),
            labelX2.heightAnchor.constraint(equalToConstant: 40)
        ])
        labelX3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelX3.widthAnchor.constraint(equalToConstant: 40),
            labelX3.heightAnchor.constraint(equalToConstant: 40)
        ])
        labelX4.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelX4.widthAnchor.constraint(equalToConstant: 40),
            labelX4.heightAnchor.constraint(equalToConstant: 40)
        ])
        labelX5.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelX5.widthAnchor.constraint(equalToConstant: 40),
            labelX5.heightAnchor.constraint(equalToConstant: 40)
        ])
        labelX6.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelX6.widthAnchor.constraint(equalToConstant: 40),
            labelX6.heightAnchor.constraint(equalToConstant: 40)
        ])
        stackView.addArrangedSubview(labelX1)
        stackView.addArrangedSubview(labelX2)
        stackView.addArrangedSubview(labelX3)
        stackView.addArrangedSubview(labelX4)
        stackView.addArrangedSubview(labelX5)
        stackView.addArrangedSubview(labelX6)
 
    }
    
    @objc func submit(_ sender: UIButton) {
        
        navigationController?.pushViewController(NewPwdViewController(), animated: true)
    }
    
}

