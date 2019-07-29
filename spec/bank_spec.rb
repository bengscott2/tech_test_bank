require 'bank'

describe Bank do
  before(:all) do
    @bank = Bank.new
  end

  it 'has an account balance that is initially set at zero' do
    expect(subject.get_balance).to eq 0
  end

  describe '#deposit' do
    it 'will add to account balance amount passed to deposit' do
      expect(@bank.get_balance).to eq 0
      @bank.deposit(100)
      expect(@bank.get_balance).to eq 100
    end
  end
end
