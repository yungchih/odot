require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

	let(:valid_attributes){attributes_for(:contact)}
	let(:invalid_attributes){{nae: ''}}
	let(:valid_session){{}}

	describe "GET #index" do
		it "returns all contacts" do
		end
	end

	describe "GET #show" do
	end

	describe "POST #create" do
		context "with valid params" do
			it "creates a new contact" do
				expect { 
					post :create, {:contact => valid_attributes}, valid_session
				}.to change(Contact, :count).by(1)
			end

			it "assigns a newly created contact as @contact" do
				post :create, {:contact => valid_attributes}, valid_session
				expect(assigns(:contact)).to be_a(Contact)
				expect(assigns(:contact)).to be_persisted
			end

			it "redirects to the created contact" do
				post :create, {:contact => valid_attributes}, valid_session
				expect(response).to redirect_to(Contact.last)
			end

		end

		context "with invalid params" do
			it "assigns a newly created but unsaved contact as @contact" do
				post :create, {:contact => invalid_attributes}, valid_session
				expect(assigns(:contact)).to be_a_new(Contact)
			end

			it "re-render the 'new' template" do
				post :create, {:contact => invalid_attributes}, valid_session
				expect(response).to render_template("new")
			end
		end
	end


	describe "PUT #update" do
		context "with valid params" do
			let(:new_attributes){

			}

			it "updates the requested contact" do
				contact = Contact.create! valid_attributes
				put :update, {:id => contact.to_param, :contact => new_attributes}, valid_session
				contact.reload
			end

		end
	end

end