class TimesheetsController < ApplicationController
	skip_before_action :keep_out_unless_logged_in
	def landing
		 @action = 'login'
  end
	

end