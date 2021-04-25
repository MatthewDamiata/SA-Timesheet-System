require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

 # spec/controllers/sessions_controller_spec.rb

# ...

 describe "#create" do
    context "no active session, User and Authorization do not exist" do 
			before do
        session[:user_id] = nil
          # Database has been cleaned, so shouldn't have to worry about User and Authorization
      end 
      context 'register with github' do
			  let(:auth) {double('Authorization', provider: "github", uid: "123456", user_id: id1, user: double('User', name: 'SUNY Tester', email: 'stester@binghamton.edu', id: id1))} 
        describe 'When signing up for first time' do
          it "creates a User" do
					  expect { post :create, provider: :github }.to change(User, :count).by(1)
          end        
          it "creates an Authorization" do
			   
						expect { post :create, provider: :github }.to change(Authorization, :count).by(1)
          end
          it "creates a session" do 
						 post :create, provider: :github
          end
          it "creates a current_user" do
						 post :create, provider: :github
          end
        end
        describe 'After successful registration' do
          it "sets a flash message" do
						 post :create, provider: :github
          end 
          it "creates an empty user profile" do
						 post :create, provider: :github
          end
          # Finally, we should test where it's going
          it "redirects to the edit profile page" do 
          end
        end
      end
    end
end
end
