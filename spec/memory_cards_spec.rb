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
    
    describe 'PUT viewPrevious' do 
        it 'calls viewPrevious' do
            @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Daniel", :editing => false)
            @row = ShareTable.create(:id => 1, :donator => 1, :receiver => 2, :group_id => 1, :memcard_id => @memCard.id)
            @group = Group.create(:creator => 3, :group_name => "friends", :people => "8")
            xhr :put, 'viewPrevious', :id => @memCard.id
            expect(response).to render_template 'viewPrevious'
        end
        
        it 'calls hidePrevious' do
            @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Daniel", :editing => false)
            @row = ShareTable.create(:id => 1, :donator => 1, :receiver => 2, :group_id => 1, :memcard_id => @memCard.id)
            @group = Group.create(:creator => 3, :group_name => "friends", :people => "8")
            xhr :put, 'hidePrevious', :id => @memCard.id
            expect(response).to render_template 'hidePrevious'
        end
        
        it 'calls viewShareOptions' do
            @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Daniel", :editing => false)
            @row = ShareTable.create(:id => 1, :donator => 1, :receiver => 2, :group_id => 1, :memcard_id => @memCard.id)
            @group = Group.create(:creator => 3, :group_name => "friends", :people => "8")
            # stub_const("current_user", 5)
            xhr :put, 'viewShareOptions', :id => @memCard.id, :current_user => 1
            expect(response).to render_template 'viewShareOptions'
        end
        
        it 'calls hideShareOptions' do
            @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Daniel", :editing => false)
            @row = ShareTable.create(:id => 1, :donator => 1, :receiver => 2, :group_id => 1, :memcard_id => @memCard.id)
            @group = Group.create(:creator => 3, :group_name => "friends", :people => "8")
            xhr :put, 'hideShareOptions', :id => @memCard.id, :current_user => 1
            expect(response).to render_template 'hideShareOptions'
        end
        
        it 'calls shareGroup' do
            @memCard = MemoryCard.create(:id => 1, :user_id => 123, :question => "What is your name?", :answer => "Daniel", :editing => false)
            @row = ShareTable.create(:id => 1, :donator => 1, :receiver => 2, :group_id => 1, :memcard_id => @memCard.id)
            @group = Group.create(:creator => 3, :group_name => "friends", :people => "8")
            xhr :put, 'shareGroup', :id => @memCard.id, :current_user => 1
            expect(response).to render_template 'shareGroup'
        end
        
        it 'renders index of share' do
            xhr :get, 'index', :category => "Shared"
            expect(response).to render_template 'sharingPage'
        end
            
    end
    
end
