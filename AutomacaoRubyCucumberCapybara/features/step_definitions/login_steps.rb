Quando('eu faço login com {string} e {string}') do |username, password|
  visit "/login.jsp"
  find("#uid").set username
  find("#passw").set password
  click_button "Login"
  sleep 6
end

Então('devo ser autenticado') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('devo ver {string} na área logada') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end