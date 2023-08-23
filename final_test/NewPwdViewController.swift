import UIKit

class NewPwdViewController: UIViewController {
    
    
    private let lockImage = UIImageView(image: UIImage(named: "lock"))
    
    private let mainTextField = MakerView.shared.makeTextField(placeholder: "erp001",
                                                               cornerRadius: 10,
                                                               backgroundColor: .systemGray)
    
    private let btmView = MakerView.shared.makeView()
    
    private let newPswLabel = MakerView.shared.makeLabel(text: "Employee Id / Email")
    
    private let newPswTextField = MakerView.shared.makeTextField(placeholder: "Enter ID/Email")
    
    private let newPswBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let eyeButton1 = MakerView.shared.makeButton(backgroundColor: .clear,
                                                        image: UIImage(named: "eye")!)
    
    private let confirmPswLabel = MakerView.shared.makeLabel(text: "Password")
    
    private let confirmPswTextField = MakerView.shared.makeTextField(placeholder: "Enter Password")
    
    private let confirmPswBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let eyeButton2 = MakerView.shared.makeButton(backgroundColor: .clear,
                                                        image: UIImage(named: "eye")!)
    
    
    private let submitButton = MakerView.shared.makeButton(title: "Submit",
                                                           backgroundColor: Constants.submitButtonColor)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initUI()
        configurateSubmitButton()
        configurateId()

        
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
            btmView.heightAnchor.constraint(equalToConstant: 520),
            btmView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            btmView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            btmView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    
    private func configurateSubmitButton() {
        
        btmView.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            submitButton.centerXAnchor.constraint(equalTo: btmView.centerXAnchor),
            submitButton.bottomAnchor.constraint(equalTo: btmView.bottomAnchor, constant: -140),
            submitButton.heightAnchor.constraint(equalToConstant: 35),
            submitButton.widthAnchor.constraint(equalToConstant: 95)
        ])

    }
    
    private func configurateId() {
        
        btmView.addSubview(newPswLabel)
        newPswLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newPswLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            newPswLabel.topAnchor.constraint(equalTo: btmView.topAnchor, constant: 30)
        ])
        
        btmView.addSubview(newPswTextField)
        newPswTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newPswTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            newPswTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            newPswTextField.topAnchor.constraint(equalTo: newPswLabel.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(newPswBorderView)
        newPswBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newPswBorderView.heightAnchor.constraint(equalToConstant: 1),
            newPswBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            newPswBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            newPswBorderView.topAnchor.constraint(equalTo: newPswTextField.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(eyeButton1)
        eyeButton1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            eyeButton1.centerYAnchor.constraint(equalTo: newPswTextField.centerYAnchor, constant: 0),
            eyeButton1.trailingAnchor.constraint(equalTo: newPswBorderView.trailingAnchor, constant: -23)
        ])
        
        eyeButton1.addTarget(self, action: #selector(hidePsw1), for: .touchUpInside)
        
        btmView.addSubview(confirmPswLabel)
        confirmPswLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmPswLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            confirmPswLabel.topAnchor.constraint(equalTo: newPswBorderView.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(confirmPswTextField)
        confirmPswTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmPswTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            confirmPswTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            confirmPswTextField.topAnchor.constraint(equalTo: confirmPswLabel.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(confirmPswBorderView)
        confirmPswBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmPswBorderView.heightAnchor.constraint(equalToConstant: 1),
            confirmPswBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            confirmPswBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            confirmPswBorderView.topAnchor.constraint(equalTo: confirmPswTextField.bottomAnchor, constant: 15)
        ])
        
        btmView.addSubview(eyeButton2)
        eyeButton2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            eyeButton2.centerYAnchor.constraint(equalTo: confirmPswTextField.centerYAnchor, constant: 0),
            eyeButton2.trailingAnchor.constraint(equalTo: confirmPswBorderView.trailingAnchor, constant: -23)
        ])
        
        eyeButton2.addTarget(self, action: #selector(hidePsw2), for: .touchUpInside)
    }
    
    @objc func hidePsw1(_ sender: UIButton) {
        
        newPswTextField.isSecureTextEntry = !newPswTextField.isSecureTextEntry
    }
    
    @objc func hidePsw2(_ sender: UIButton, textField: UITextField) {
        
        confirmPswTextField.isSecureTextEntry = !confirmPswTextField.isSecureTextEntry
    }
}
