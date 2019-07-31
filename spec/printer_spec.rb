# frozen_string_literal: true

require 'printer'

describe Printer do
  describe '#print_statement' do
    it 'will print out statement including header' do
      printer_return = [
        'date || credit || debit || balance',
        '16/07/1969 || || 100.00 || 900.00',
        '05/11/1955 || 1000.00 || || 1000.00'
      ].join("\n")
      @entry_double_credit = double('Entry', type: 'credit',
                                             amount: 1000, balance_at_entry: 1000, date: '05/11/1955')
      @entry_double_debit = double('Entry', type: 'debit',
                                            amount: 100, balance_at_entry: 900, date: '16/07/1969')
      expect(subject.print_statement([@entry_double_credit,
                                      @entry_double_debit])).to eq printer_return
    end
  end
end
