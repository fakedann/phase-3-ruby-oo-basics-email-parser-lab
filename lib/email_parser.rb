# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'uri'

class EmailAddressParser
  attr_accessor :emails

  def initialize(emails="avi@test.com, arel@test.com test@avi.com, test@arel.com")
    @emails = emails

  end

  def parse
    print @emails
    @emails= @emails.split(/[,\s]+/).uniq
    @emails = @emails.filter {|email| email.match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)}
    @emails
    
  end


end

hola = EmailAddressParser.new
hola.parse