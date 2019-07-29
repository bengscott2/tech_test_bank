class Bank
  def initialize
    @account_balance = 0
  end

  def get_balance
    @account_balance
  end

  def deposit(amount)
    @account_balance += amount
  end

  def withdraw(amount)
    @account_balance -= amount
  end
end
