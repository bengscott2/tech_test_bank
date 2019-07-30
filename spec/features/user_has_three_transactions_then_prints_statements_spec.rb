# frozen_string_literal: true

require 'bank'

describe 'user has 3 transactions' do
  it 'will be returned a statement as a string' do
    bank = Bank.new
    Timecop.freeze(2012, 0o1, 10)
    bank.deposit(1000)
    Timecop.freeze(2012, 0o1, 13)
    bank.deposit(2000)
    Timecop.freeze(2012, 0o1, 14)
    bank.withdraw(500)
    Timecop.return
    expect { bank.print_statement }.to output("date || credit || debit || balance\n14/01/2012 || || 500.00 || 2500.00\n13/01/2012 || 2000.00 || || 3000.00\n10/01/2012 || 1000.00 || || 1000.00").to_stdout
  end
end
