# frozen_string_literal: true

class Entry
  attr_reader :type, :amount, :balance_at_entry, :date

  def initialize(type, amount, balance_at_entry)
    @type = type
    @amount = amount
    @balance_at_entry = balance_at_entry
    @date = Time.new.strftime('%d/%m/%Y')
  end
end
