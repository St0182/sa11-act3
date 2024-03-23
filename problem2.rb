#Defining a method to parse invoice entries from a structure text
def parse_invoices(invoice_data)
  # Iterating over each line in the provided invoice data, treating each as a separate invoice entry.
  invoice_data.each_line do |line|
    # Matching each line against a pattern that captures the date, invoice number, client name, and amount.
    # This includes using capturing groups for each part of the invoice format.
    pattern = /(\d{4}-\d{2}-\d{2}) - ([\w]+) - ([\w\s]+) - (\$\d+)/

    # Attempting to match the current line against the pattern to extract invoice details.
    match = line.match(pattern)

    # Checking if the match was successful to prevent errors and then printing the captured details in a structured format.
    if match
      puts "Date: #{match[1]}, Invoice Number: #{match[2]}, Client: #{match[3].strip}, Amount: #{match[4]}"
    end
  end
end

# Defining a string with multiple lines, each representing an invoice entry to be parsed.
invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

# Invoking the method with the invoice entries to parse them and print the extracted details.
parse_invoices(invoice_entries)
