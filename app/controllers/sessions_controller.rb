class SessionsController < ApplicationController
	 def nested_hash nh, indent
    puts indent + "VALUE is a nested hash"
    indent += '  '
    nh.each_pair do |key, value|
      puts indent + "KEY: #{key}"
      if value.kind_of?(Hash)
        nested_hash(value, indent)
      else
        puts indent + "VALUE:  #{value}"
      end     
    end
  end

  def start_test
  end

  def clear
  end

  def debug
		auth_hash = request.env['omniauth.auth']
    p auth_hash
  		    
    puts '\n raw auth_hash\n'
    p auth_hash
    puts '\n\nauth_hash by key\n'
    auth_hash.each_pair do |key, value|
    puts "\nKEY: #{key}"
    if value.kind_of?(Hash)
      nested_hash(value, '')
    else
      puts "Value: #{value}"
    end
    end
  end

  def new
  end

  def create

		user = User.create_with_omniauth(auth_hash['info'])
	  auth = Authorization.create_with_omniauth(auth_hash, user)
	  #user = User.create!("name" => auth_hash[:info][:name], "email" => auth_hash[:info][:email])
		
  end

  def failure
		
  end

  def destroy
  end
	
  private 
  def auth_hash
    #ensures that it's only retrieved once per cycle
    @auth_hash ||= request.env['omniauth.auth']
  end
end
