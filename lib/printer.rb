# frozen_string_literal: true

class Printer
  def print_statement(entries)
    print_header + print_entries(entries)
  end

  private

  def print_entries(entries)
    entries.reverse.map do |entry|
      stringify_entry(entry)
    end.join("\n")
  end

  def stringify_entry(entry)
    "#{entry.date} || #{transaction(entry)} || #{entry.balance_at_entry}.00"
  end

  def transaction(entry)
    entry.type == 'debit' ? "|| #{entry.amount}.00" : "#{entry.amount}.00 ||"
  end

  def print_header
    "date || credit || debit || balance\n"
  end
end
