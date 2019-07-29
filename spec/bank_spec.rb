require 'bank'

describe Bank do
  it 'has an account balance that is initially set at zero' do
    expect(subject.get_balance).to eq 0
  end

  describe '#deposit' do
    it 'will add to account balance amount passed to deposit' do
      expect(subject.get_balance).to eq 0
      subject.deposit(100)
      expect(subject.get_balance).to eq 100
    end
  end
end
