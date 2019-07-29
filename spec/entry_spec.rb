require 'entry'

describe Entry do
  describe '#initialize' do
    it 'takes a type as an argument' do
      entry = Entry.new('debit')
      expect(entry.type).to eq 'debit'
    end
    it 'stores the current date' do
      date = Time.new.strftime("%d/%m/%Y")
      entry = Entry.new('debit')
      expect(entry.date).to eq date
    end
  end
end
