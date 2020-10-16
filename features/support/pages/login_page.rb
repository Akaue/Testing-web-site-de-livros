class LoginPage
    include Capybara::DSL

    def visitar
        visit '/'
    end

    def logar
        click_link 'My Account'
        find('#username').set "akaueteste@teste.com"
        find('#password').set "TeStE21!lLoS9im"
    end











    
end



# 'akaueteste@teste.com','TeStE21!lLoS9im'