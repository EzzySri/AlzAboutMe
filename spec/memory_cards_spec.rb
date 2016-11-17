require 'rails_helper'

RSpec.describe MemoryCardsController, type: :controller do
    describe 'GET edit' do
        
        it 'shows index page' do
            expect(2).to eql(3)
            # get :edit
            # expect(response).to render_template 'index'
        end
    end
    
end
