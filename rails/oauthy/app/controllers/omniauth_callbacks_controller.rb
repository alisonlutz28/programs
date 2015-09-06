class OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def linkedin
		auth = env["omniauth.auth"]

		@person = Person.find_for_linkedin_oauth(request.env["omniauth.auth"]),current_person)
if @person.persisted?
	flash[:notice] = I18n.t "devise.omniauth_callbacks.success"
	sign_in_and_redirect @person, :event => :authentication
else
	session["devise.linkedin_uid"] = request.env["omniauth.auth"]
	redirect_to new_person_registration_url
end
end