class Bank
  def initialize(entry = Entry)
    @account_balance = 0
    @entry = entry
    @entries = []
  end

  def get_balance
    @account_balance
  end

  def deposit(amount)
    @account_balance += amount
  end

  def withdraw(amount)
    @account_balance -= amount
    entry = new_entry('credit', amount, @account_balance)
    @entries.push(entry)
    entry
  end

  private

  def new_entry(type, amount, balance_at_entry)
    @entry.new(type, amount, balance_at_entry)
  end
end
