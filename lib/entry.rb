class Entry
  attr_reader :type, :date, :amount, :balance

  def initialize(type, amount, balance, time = Time)
    @type = type
    @amount = amount
    @balance = balance
    @date = time.new.strftime("%d/%m/%Y")
  end
end
