import UIKit

class SignUpViewController: UIViewController {
    
    private var isSelected = false
    
    private let welcomeImage = UIImageView(image: UIImage(named: "welcome_logo"))

    private let btmView = MakerView.shared.makeView()

    private let bottomImage = UIImageView(image: UIImage(named: "bottom_logo"))
    
    private let signUpButton = MakerView.shared.makeButton(title: "Sign Up")
    
    private let fullNameLabel = MakerView.shared.makeLabel(text: "Full Name")
    
    private let fullNameTextField = MakerView.shared.makeTextField(placeholder: "Enter Full Name")
    
    private let fullNameBorderView = MakerView.shared.makeView(backgroundColor: .gray)

    private let mobileNumberLabel = MakerView.shared.makeLabel(text: "Mobile Number")
                                                    
    private let mobileNumberTextField = MakerView.shared.makeTextField(placeholder: "Enter Mobile Number")
    
    private let mobileNumberBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let emailLabel = MakerView.shared.makeLabel(text: "Email")
                                                    
    private let emailTextField = MakerView.shared.makeTextField(placeholder: "Enter Email")
 
    private let emailBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let userNameLabel = MakerView.shared.makeLabel(text: "User Name")
       
    private let userNameTextField = MakerView.shared.makeTextField(placeholder: "Enter User Name")
    
    private let userNameBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let pswLabel = MakerView.shared.makeLabel(text: "Password")
    
    private let pswTextField = MakerView.shared.makeTextField(placeholder: "Enter Password")
 
    private let pswBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let eyeButton = MakerView.shared.makeButton(backgroundColor: .clear,
                                                        image: UIImage(named: "eye")!)
    
    private let confirmPswLabel = MakerView.shared.makeLabel(text: "Confirm Password")
    
    private let confirmPswTextField = MakerView.shared.makeTextField(placeholder: "Confirm Password")
    
    private let confirmPswBorderView = MakerView.shared.makeView(backgroundColor: .gray)
    
    private let eyeButton_2 = MakerView.shared.makeButton(backgroundColor: .clear,
                                                        image: UIImage(named: "eye")!)
   
    private let dontLabel = MakerView.shared.makeLabel(text: "Already Have An Account?",
                                                       textColor: .black)
    
    private let signInButton = MakerView.shared.makeButton(title: "Sign In",
                                                           titleColor: .link,
                                                           backgroundColor: .clear,
                                                           font: .systemFont(ofSize: 13))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initUI()
        configurateBottom()
        configurateSignUpButton()
        configurateEmail_login()
        configurateSignInButton()
        
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
            btmView.topAnchor.constraint(equalTo: view.topAnchor, constant: 210),
            btmView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            btmView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            btmView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
    }
    
    
    private func configurateBottom() {
        
        btmView.addSubview(bottomImage)
        bottomImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomImage.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            bottomImage.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            bottomImage.bottomAnchor.constraint(equalTo: btmView.bottomAnchor, constant: 20)
            
        ])
    }
    
    private func configurateSignUpButton() {
        
        btmView.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signUpButton.centerXAnchor.constraint(equalTo: btmView.centerXAnchor),
            signUpButton.bottomAnchor.constraint(equalTo: bottomImage.topAnchor, constant: -5),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
            signUpButton.widthAnchor.constraint(equalToConstant: 168)
        ])
        
        signUpButton.addTarget(self, action: #selector(singUp), for: .touchUpInside)
    }
    
    private func configurateEmail_login() {
        
        btmView.addSubview(fullNameLabel)
        fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fullNameLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            fullNameLabel.topAnchor.constraint(equalTo: btmView.topAnchor, constant: 30)
        ])
        
        btmView.addSubview(fullNameTextField)
        fullNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fullNameTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            fullNameTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            fullNameTextField.topAnchor.constraint(equalTo: fullNameLabel.bottomAnchor, constant: 10)
        ])
        
        btmView.addSubview(fullNameBorderView)
        fullNameBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            fullNameBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            fullNameBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            fullNameBorderView.topAnchor.constraint(equalTo: fullNameTextField.bottomAnchor, constant: 10),
            fullNameBorderView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
        btmView.addSubview(mobileNumberLabel)
        mobileNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mobileNumberLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            mobileNumberLabel.topAnchor.constraint(equalTo: fullNameBorderView.topAnchor, constant: 10)
        ])
        
        btmView.addSubview(mobileNumberTextField)
        mobileNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mobileNumberTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            mobileNumberTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            mobileNumberTextField.topAnchor.constraint(equalTo: mobileNumberLabel.bottomAnchor, constant: 10)
        ])
        
        btmView.addSubview(mobileNumberBorderView)
        mobileNumberBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mobileNumberBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            mobileNumberBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            mobileNumberBorderView.topAnchor.constraint(equalTo: mobileNumberTextField.bottomAnchor, constant: 10),
            mobileNumberBorderView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
        btmView.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            emailLabel.topAnchor.constraint(equalTo: mobileNumberBorderView.topAnchor, constant: 10)
        ])
        
        btmView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            emailTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10)
        ])
        
        btmView.addSubview(emailBorderView)
        emailBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            emailBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            emailBorderView.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            emailBorderView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
        btmView.addSubview(userNameLabel)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userNameLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            userNameLabel.topAnchor.constraint(equalTo: emailBorderView.topAnchor, constant: 10)
        ])
        
        btmView.addSubview(userNameTextField)
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userNameTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            userNameTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            userNameTextField.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 10)
        ])
        
        btmView.addSubview(userNameBorderView)
        userNameBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            userNameBorderView.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 0),
            userNameBorderView.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: 0),
            userNameBorderView.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 10),
            userNameBorderView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
        btmView.addSubview(pswLabel)
        pswLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            pswLabel.topAnchor.constraint(equalTo: userNameBorderView.topAnchor, constant: 10)
        ])
        
        btmView.addSubview(pswTextField)
        pswTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            pswTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            pswTextField.topAnchor.constraint(equalTo: pswLabel.bottomAnchor, constant: 10)
        ])
        
        btmView.addSubview(pswBorderView)
        pswBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pswBorderView.topAnchor.constraint(equalTo: pswTextField.bottomAnchor, constant: 10),
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
        
        eyeButton.addTarget(self, action: #selector(hidePsw1), for: .touchUpInside)
        
        btmView.addSubview(confirmPswLabel)
        confirmPswLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmPswLabel.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            confirmPswLabel.topAnchor.constraint(equalTo: pswBorderView.topAnchor, constant: 15)
        ])
        
        btmView.addSubview(confirmPswTextField)
        confirmPswTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmPswTextField.leadingAnchor.constraint(equalTo: btmView.leadingAnchor, constant: 23),
            confirmPswTextField.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23),
            confirmPswTextField.topAnchor.constraint(equalTo: confirmPswLabel.bottomAnchor, constant: 10)
        ])
        
        btmView.addSubview(confirmPswBorderView)
        confirmPswBorderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            confirmPswBorderView.topAnchor.constraint(equalTo: confirmPswTextField.bottomAnchor, constant: 10),
            confirmPswBorderView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            confirmPswBorderView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            confirmPswBorderView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
        btmView.addSubview(eyeButton_2)
        eyeButton_2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            eyeButton_2.centerYAnchor.constraint(equalTo: confirmPswTextField.centerYAnchor, constant: 0),
            eyeButton_2.trailingAnchor.constraint(equalTo: btmView.trailingAnchor, constant: -23)
        ])
        
       eyeButton_2.addTarget(self, action: #selector(hidePsw2), for: .touchUpInside)
       
    }
    
   
    private func configurateSignInButton() {
        
        btmView.addSubview(dontLabel)
        dontLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            dontLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dontLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40)
        ])
        
        btmView.addSubview(signInButton)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInButton.centerXAnchor.constraint(equalTo: dontLabel.centerXAnchor, constant: 100),
            signInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40)
        ])
        
        signInButton.addTarget(self, action: #selector(signIn), for: .touchUpInside)
   }
    
    
    @objc func signIn(_ sender: UIButton) {
        
        
        navigationController?.pushViewController(ViewController(), animated: true)
        
    }

    @objc func hidePsw1(_ sender: UIButton) {
        
        pswTextField.isSecureTextEntry = !pswTextField.isSecureTextEntry
    }
    
    @objc func hidePsw2(_ sender: UIButton, textField: UITextField) {
        
        confirmPswTextField.isSecureTextEntry = !confirmPswTextField.isSecureTextEntry
    }
    
    func check (tf: UITextField) -> Bool {
        if tf.text?.isEmpty ?? true {
            tf.layer.borderColor = UIColor.red.cgColor
            tf.layer.borderWidth = 1
            tf.placeholder = "Fill the information"
            return false
        } else {
            tf.layer.borderColor = UIColor.white.cgColor
            return true
        }
    }
    
    @IBAction func singUp(_ sender: Any) {
        
        var flag = true
        
        if !check(tf: fullNameTextField) {flag = false}
        if !check(tf: mobileNumberTextField)  {flag = false}
        if !check(tf: emailTextField)  {flag = false}
        if !check(tf: userNameTextField)  {flag = false}
        if !check(tf: pswTextField)  {flag = false}
        if !check(tf: confirmPswTextField)  {flag = false}
     
        if flag {
            navigationController?.pushViewController(FinalViewController(), animated: true)
        }
        
    }
}
