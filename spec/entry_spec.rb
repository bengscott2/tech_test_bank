require 'entry'

describe Entry do
  describe '#initialize' do
    before(:each) do
      @entry = Entry.new('debit', 1000, 1000)
    end

    it 'takes a type as an argument' do
      expect(@entry.type).to eq 'debit'
    end
    it 'stores the current date' do
      date = Time.new.strftime("%d/%m/%Y")
      expect(@entry.date).to eq date
    end
    it 'stores the amount for the entry' do
      expect(@entry.amount).to eq 1000
    end
    it 'stores balance at time of entry' do
      expect(@entry.balance).to eq 1000
    end
  end
end
