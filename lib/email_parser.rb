# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require pry

class EmailParser
  attr_accessor :emails

  @@all = []

  def initialize(emails)
    @emails=emails

    array = emails.split(" ")
    binding pry
    array.each {|email| @@all << email}
    @@all = @@all.uniq
  end

  def parse
    @@all
  end

end
