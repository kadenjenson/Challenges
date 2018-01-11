def sort_values invoices
  invoices.sort_by do |invoice|
    invoice.total
  end.reverse
end

Invoice = Struct.new(:name, :total, :category)
google = Invoice.new('Google', 500, 'Marketing')
amazon = Invoice.new('Amazon', 1000, 'eCommerce')
yahoo = Invoice.new('Yahoo', 300, 'Marketing')
bottega = Invoice.new('Bottega', 870, 'Education')

invoices = [google, amazon, yahoo, bottega]

p sort_values invoices