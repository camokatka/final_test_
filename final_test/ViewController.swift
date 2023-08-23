import UIKit

class ViewController: UIViewController {
    
    private var isSelected = false
    
    private let welcomeImage = UIImageView(image: UIImage(named: "welcome_logo"))

    private let welcomeLabel = MakerView.shared.makeLabel(text: "Welcome back",
                                                          textColor: .white,
                                                          font: .systemFont(ofSize: 34, weight: .bold))
    
    private let signInLabel = MakerView.shared.makeLabel(text: "Sign in to continue",
                                                         textColor: .white,
                                                         font: .systemFont(ofSize: 20, weight: .regular),
                                                         opacity: 0.61)
    
    private let btmView = MakerView.shared.makeView()

    
    private let bottomImage = UIImageView(image: UIImage(named: "bottom_logo"))
    
    private let signInButton = MakerView.shared.makeButton(title: "Sign In")
    
    private let idLabel = MakerView.shared.makeLabel(text: "Employee Id / Email")
    
    private let idTextField = MakerView.shared.makeTextField(placeholder: "Enter ID/Email")
    
    private let idBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let pswLabel = MakerView.shared.makeLabel(text: "Password")
    
    private let pswTextField = MakerView.shared.makeTextField(placeholder: "Enter Password")
    
    private let pswBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let eyeButton = MakerView.shared.makeButton(backgroundColor: .clear,
                                                        image: UIImage(named: "eye")!)
    
    private let forgotButton = MakerView.shared.makeButton(title: "Forgot password?",
                                                           titleColor: .link,
                                                           backgroundColor: .clear,
                                                           font: .systemFont(ofSize: 13))
    
    private let checkboxButton = MakerView.shared.makeButton(backgroundColor: .white,
                                                             image: UIImage(named: "checkbox")!)
    
    private let rememberLabel = MakerView.shared.makeLabel(text: "Remember Me",
                                                           textColor: .black,
                                                           font: .systemFont(ofSize: 18))
                                                           
    private let dontLabel = MakerView.shared.makeLabel(text: "Don't Have An Account?",
                                                       textColor: .black)
    
    private let signUpButton = MakerView.shared.makeButton(title: "Sign Up",
                                                           titleColor: .link,
                                                           backgroundColor: .clear,
                                                           font: .systemFont(ofSize: 13))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initUI()
        configurateLabel()
        configurateBottom()
        configurateSignInButton()
        configurateEmail_login()
        configurateCheckbox()
        configurateSignUpButton()
        
    }
    
    private func initUI() {
        
        view.backgroundColor = Constants.backgroundColor
        
        view.addSubview(welcomeImage)
        welcomeImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
        ])
        
        
        view.addSubview(btmView)
        btmView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            btmView.heightAnchor.constraint(equalToConstant: 442),
            btmView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            btmView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            btmView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    private func configurateLabel() {
        
        btmView.addSubview(signInLabel)
        signInLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            signInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            signInLabel.bottomAnchor.constraint(equalTo: btmView.topAnchor, constant: -10)
        ])
        
        btmView.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            welcomeLabel.bottomAnchor.constraint(equalTo: signInLabel.topAnchor, constant: -15)
        ])
    }
    
    private func configurateBottom() {
        
        btmView.addSubview(bottomImage)
        bottomImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomImage.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            bottomImage.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            bottomImage.bottomAnchor.constraint(equalTo: btmView.bottomAnchor, constant: 0)
        ])
    }
    
    private func configurateSignInButton() {
        
        btmView.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInButton.centerXAnchor.constraint(equalTo: btmView.centerXAnchor),
            signInButton.bottomAnchor.constraint(equalTo: bottomImage.topAnchor, constant: -10),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
            signInButton.widthAnchor.constraint(equalToConstant: 168)
        ])
        
        signInButton.addTarget(self, action: #selector(singIn), for: .touchUpInside)
    }
    
    private func configurateEmail_login() {
        
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
            idTextField.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 15),

        ])
        
        btmView.addSubview(idBorderView)
        idBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            idBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            idBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            idBorderView.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: 15),
            idBorderView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
        btmView.addSubview(pswLabel)
        pswLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            pswLabel.topAnchor.constraint(equalTo: idBorderView.topAnchor, constant: 30)
        ])
        
        btmView.addSubview(pswTextField)
        pswTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            pswTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            pswTextField.topAnchor.constraint(equalTo: pswLabel.bottomAnchor, constant: 15),

        ])
        
        btmView.addSubview(pswBorderView)
        pswBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswBorderView.topAnchor.constraint(equalTo: pswTextField.bottomAnchor, constant: 15),
            pswBorderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            pswBorderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            pswBorderView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
        btmView.addSubview(eyeButton)
        eyeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            eyeButton.centerYAnchor.constraint(equalTo: pswTextField.centerYAnchor, constant: 0),
            eyeButton.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23)
        ])
        
        eyeButton.addTarget(self, action: #selector(hidePsw), for: .touchUpInside)
        
        
        btmView.addSubview(forgotButton)
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forgotButton.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            forgotButton.topAnchor.constraint(equalTo: pswBorderView.bottomAnchor, constant: 5)
        ])
        
        forgotButton.addTarget(self, action: #selector(forgotPwd), for: .touchUpInside)
        
    }
    
    private func configurateCheckbox() {
        
        btmView.addSubview(checkboxButton)
        checkboxButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            checkboxButton.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            checkboxButton.topAnchor.constraint(equalTo: pswBorderView.bottomAnchor, constant: 35)
        ])
        
        checkboxButton.addTarget(self, action: #selector(setCheckbox), for: .touchUpInside)
        
        btmView.addSubview(rememberLabel)
        rememberLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            rememberLabel.topAnchor.constraint(equalTo: pswBorderView.bottomAnchor, constant: 36),
            rememberLabel.centerXAnchor.constraint(equalTo: checkboxButton.centerXAnchor, constant: 70)
        ])
        
    }
    
    private func configurateSignUpButton() {
        
        btmView.addSubview(dontLabel)
        dontLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dontLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dontLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60)
        ])
        
        btmView.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signUpButton.centerXAnchor.constraint(equalTo: dontLabel.centerXAnchor, constant: 100),
            signUpButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60)
        ])
        
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
   }
    
    
    @objc func singIn(_ sender: UIButton) {
        
             var flag = false
             if idTextField.text?.isEmpty ?? true {
                 idTextField.layer.borderColor = UIColor.red.cgColor
                 idTextField.layer.borderWidth = 1
                 idTextField.placeholder = "Fill the information"
             } else {
                 idTextField.layer.borderColor = UIColor.white.cgColor
                 flag = true
             }
             
             if pswTextField.text?.isEmpty ?? true {
                 pswTextField.layer.borderColor = UIColor.red.cgColor
                 pswTextField.layer.borderWidth = 1
                 pswTextField.placeholder = "Fill the information"

             } else {
                 pswTextField.layer.borderColor = UIColor.white.cgColor
                 flag = true
             }
             
             if flag {
                 navigationController?.pushViewController(FinalViewController(), animated: true)
             }
        
    }
    
    @objc func signUp(_ sender: UIButton) {
        
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    
    @objc func setCheckbox(_sender: UIButton) {
        if !isSelected {
            checkboxButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
            isSelected = true
        } else {
            checkboxButton.setImage(nil, for: .normal)
            isSelected = false
        }
    }

    @objc func hidePsw(_ sender: UIButton) {
        
        pswTextField.isSecureTextEntry = !pswTextField.isSecureTextEntry
        
    }
    
    @objc func forgotPwd(_sender: UIButton) {
        
        navigationController?.pushViewController(ForgetPwdViewController(), animated: true)
        
    }
}


