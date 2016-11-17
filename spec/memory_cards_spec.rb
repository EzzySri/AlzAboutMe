require 'rails_helper'

RSpec.describe MemoryCardsController, type: :controller do
    describe 'GET edit' do
        
        # it 'shows index page' do
        #     @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack")
        #     @sharer = User.create(:username => "notBob", :first_name => "notBob", :id => 123)
        #     @sharee = User.create(:username => "bob", :first_name => "bob", :id => 234)
        #     allow(controller).to receive(:params).and_return({:id => @memCard.id, :user => {:share => "bob"}})
        #     put :share
        #     expect(response).to redirect_to memory_cards_path
        #     # get :edit
        #     # expect(response).to render_template 'index'
        # end
    end
    
end
