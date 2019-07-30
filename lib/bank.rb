# frozen_string_literal: true
require_relative 'entry.rb'
require_relative 'printer.rb'

class Bank
  attr_reader :account_balance

  def initialize(entry = Entry, printer = Printer.new)
    @account_balance = 0
    @entry = entry
    @printer = printer
    @entries = []
  end

  def deposit(amount)
    @account_balance += amount
    entry = new_entry('credit', amount, @account_balance)
    @entries.push(entry)
    entry
  end

  def withdraw(amount)
    @account_balance -= amount
    entry = new_entry('debit', amount, @account_balance)
    @entries.push(entry)
    entry
  end

  def print_statement
    @printer.print_statement(@entries)
  end

  private

  def new_entry(type, amount, balance_at_entry)
    @entry.new(type, amount, balance_at_entry)
  end
end
