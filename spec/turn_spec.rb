require './lib/turn'
require './lib/card'

RSpec.describe Turn do
    before :each do
        @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        @turn = Turn.new("Juneau", @card)
    end

    it 'exists' do
        expect(@turn).to be_a(Turn)
    end

    it 'has attributes' do
        expect(@turn.guess).to eq('Juneau')
        expect(@turn.card).to eq(@card)
    end
end