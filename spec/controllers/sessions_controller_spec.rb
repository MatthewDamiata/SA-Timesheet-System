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
						 expect(session[:user_id]).to eq(1)
          end
          it "creates a current_user" do
						 expect(controller).to receive(:current_user=).exactly(1).times    
						 post :create, provider: :github
          end
        end
        describe 'After successful registration' do
					let(:id1)  {1}
          let(:user) {double('User', name: 'SUNY Tester', email: 'stester@binghamton.edu', id: id1)}
          let(:auth) {double('Authorization', provider: "github", uid: "123456", user_id: id1, user: double('User', name: 'SUNY Tester', email: 'stester@binghamton.edu', id: id1))} 
           
					let(:id2)  {2}
          let(:user_id) {1} 
          it "sets a flash message" do
						 post :create, provider: :github
						 expect(flash[:notice]).to match(/^Welcome #{user.name}! You have signed up via #{auth.provider}.$/)
          end 
          it "creates an empty user profile" do
						 post :create, provider: :github
						 expect(assigns(:profile)).to have_attributes(id: id2, user_id: 1)
          end
          # Finally, we should test where it's going
          it "redirects to the edit profile page" do
						post :create, provider: :github  
						 expect(response).to redirect_to(edit_user_profile_path(user_id: 1, id: id2))       
          end
        end
      end
    end
end
end
