require 'entry'

describe Entry do
  describe '#initialize' do
    before(:each) do
      Timecop.freeze(1969, 07, 16)
      @entry = Entry.new('debit', 1000, 1000)
      Timecop.return
    end

    it 'takes a type as an argument' do
      expect(@entry.type).to eq 'debit'
    end
    it 'stores the current date' do
      expect(@entry.date).to eq '16/07/1969'
    end
    it 'stores the amount for the entry' do
      expect(@entry.amount).to eq 1000
    end
    it 'stores balance at time of entry' do
      expect(@entry.balance_at_entry).to eq 1000
    end
  end
end
