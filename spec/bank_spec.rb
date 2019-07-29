require 'bank'

describe Bank do
  it 'has an account balance that is initially set at zero' do
    expect(subject.get_balance).to eq 0
  end
end
