require 'entry'

describe Entry do
  describe '#initialize' do
    it 'takes a type as an argument' do
      entry = Entry.new('debit', 1)
      expect(entry.type).to eq 'debit'
    end
    it 'stores the current date' do
      date = Time.new.strftime("%d/%m/%Y")
      entry = Entry.new('debit', 1)
      expect(entry.date).to eq date
    end
    it 'stores the amount for the entry' do
      entry = Entry.new('debit', 1000)
      expect(entry.amount).to eq 1000
    end
  end
end
