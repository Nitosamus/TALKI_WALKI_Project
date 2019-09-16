class UserMailer < ApplicationMailer
 	default from: 'talki-walki2019.herokuapp.com'
 	
  def welcome_email(user)
    @user = user 

    @url  = 'https://talki-walki2019.herokuapp.com/' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
end
