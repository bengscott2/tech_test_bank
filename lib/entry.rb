class Entry
  attr_reader :type, :date, :amount, :balance

  def initialize(type, amount, balance)
    @type = type
    @amount = amount
    @balance = balance
    @date = Time.new.strftime("%d/%m/%Y")
  end
end
