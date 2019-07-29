require 'printer'

describe Printer do
  describe '#print_header' do
    it 'will return bank statement header as a string' do
      expect(subject.print_header).to eq 'date || credit || debit || balance'
    end
  end
end
