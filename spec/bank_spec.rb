require 'bank'

describe Bank do

  it 'has an account balance that is initially set at zero' do
    expect(subject.get_balance).to eq 0
  end

  describe '#deposit' do

    before(:each) do
      @entry_double = double('Entry', :type => 'credit', :amount => 100, :balance_at_entry => 100)
      @entry_class_double = double('Entry Class', :new => @entry_double)
      @bank = Bank.new(@entry_class_double)
    end

    it 'will add to account balance amount passed to deposit' do
      expect(@bank.get_balance).to eq 0
      @bank.deposit(100)
      expect(@bank.get_balance).to eq 100
    end

    it 'will return a new entry' do
      entry = @bank.deposit(100)
      expect(entry.type).to eq 'credit'
      expect(entry.amount).to eq 100
      expect(entry.balance_at_entry).to eq 100
    end

  end

  describe '#withdraw' do

    before(:each) do
      @entry_double = double('Entry', :type => 'debit', :amount => 100, :balance_at_entry => -100)
      @entry_class_double = double('Entry Class', :new => @entry_double)
      @bank = Bank.new(@entry_class_double)
    end

    it 'will deduct from account balance amount passed to withdraw' do
      @bank.deposit(100)
      expect(@bank.get_balance).to eq 100
      @bank.withdraw(50)
      expect(@bank.get_balance).to eq 50
    end

    it 'will return a new entry' do
      entry = @bank.withdraw(100)
      expect(entry.type).to eq 'debit'
      expect(entry.amount).to eq 100
      expect(entry.balance_at_entry).to eq -100
    end
  end
end
