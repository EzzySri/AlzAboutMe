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
        
        it 'edits correctly' do
            @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
            xhr :get, 'edit', :id => @memCard
            expect(@memCard.editing).to eql(false)
        end
        
        it 'updates correctly' do
            @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
            xhr :put, 'update', :id => @memCard
            expect(@memCard.editing).to eql(false)
        end
        
        it 'exits correctly' do @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
            xhr :put, 'exit', :id => @memCard
            expect(@memCard.editing).to eql(false)
        end
    end
    
    describe 'PUT update' do
        it 'PUT :id/update updates memory card' do
           @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
           xhr :put, 'update', {:id => @memCard, :user => { :memory => "New answer to memory card question" }}
           @memCard.reload
           expect(@memCard.answer).to eql("New answer to memory card question" )
        end

        it 'PUT :id/update responds with empty JS response' do
           @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
           xhr :put, 'update', :id => @memCard.id
           response.content_type.should == Mime::JS
        end
    end

    describe 'PUT edit' do
        it 'PUT :id/edit flips memory card into edit mode' do
           @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
           xhr :put, 'edit', :id => @memCard
           @memCard.reload
           expect(@memCard.editing).to eql(true)
        end

        it 'PUT :id/edit responds with empty JS response' do
           @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
           xhr :put, 'edit', :id => @memCard.id
           response.content_type.should == Mime::JS
        end
    end

    describe 'PUT exit' do
        it 'PUT :id/cancel flips memory card out of edit mode' do
           @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => true)
           xhr :put, 'exit', :id => @memCard
           @memCard.reload
           expect(@memCard.editing).to eql(false)
        end

        it 'PUT :id/exit responds with empty JS response' do
           @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Zack", :editing => false)
           xhr :put, 'exit', :id => @memCard.id
           response.content_type.should == Mime::JS
        end
    end
    
end
