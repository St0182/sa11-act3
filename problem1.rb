#Defining a method to extract URLs from a given text
def extract_urls(text)
  # Matching URLs starting with http, https, or ftp, followed by the domain name which may include dashes.
  # This includes an optional path, query parameters, or fragments.
  pattern = /\b(?:http|https|ftp):\/\/[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*(?:\/[^\s]*)?/

  # Scanning the text for matches using the defined pattern and storing them in an array.
  urls = text.scan(pattern)

  # Printing each found URL on a new line by joining the array elements with a newline character.
  puts urls.join("\n")
end

# Defining a sample text containing multiple URLs for testing the URL extractor.
sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

# Calling the method with the sample text to extract and print the URLs.
extract_urls(sample_text)
