class Entry
  attr_reader :type, :date, :amount

  def initialize(type, amount, time = Time)
    @type = type
    @amount = amount
    @date = time.new.strftime("%d/%m/%Y")
  end
end
