#language:pt

@temp
Funcionalidade: login
Para que eu possa gerenciar o sistema
Sendo um usuário previamente cadastrado
Posso acessar o sistema com o meu jsmith e demo1234

@login_happy
Cenario: Acesso
Quando eu faço login com "jsmith" e "demo1234"
Então devo ser autenticado
E devo ver "Hello John Smith" na área logada

Cenario: Senha inválida
Quando eu faço login com "jsmith" e "demo1234"
Então devo ser autenticado
E devo ver a mensagem de alerta "Login Failed: We're sorry, but this username or password was not found in our system. Please try again."

Cenario: Usuário não existe
Quando eu faço login com "Tinho" e "demo1234"
Então devo ser autenticado
E devo ver a mensagem de alerta "Login Failed: We're sorry, but this username or password was not found in our system. Please try again."

Cenario: Nome não informado
Quando eu faço login com "" e "demo1234"
Então devo ser autenticado
E devo ver a mensagem de alerta "You must enter a valid username"

Cenario: Senha não informada
Quando eu faço login com "jsmith" e ""
Então devo ser autenticado
E devo ver a mensagem de alerta "Favor digitar a demo1234!"