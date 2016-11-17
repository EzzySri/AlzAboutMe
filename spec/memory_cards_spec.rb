require 'rails_helper'

RSpec.describe MemoryCardsController, type: :controller do
    describe 'GET edit' do
        
        it 'shows index page' do
            @memCard = MemoryCard.create(:user_id => 123, :question => "What is your name?", :answer => "Zack")
            @sharer = User.create(:username => "notBob", :first_name => "notBob", :id => 123)
            @sharee = User.create(:username => "bob", :first_name => "bob", :id => 234)
            put :share, :id => @memCard, :user => {:share => "bob"}
            expect(response).to render_template 'memory_cards_path'
            # get :edit
            # expect(response).to render_template 'index'
        end
    end
    
end
