# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :list
  
  @@all = []

  def initialize(emails)
    @list = emails
  end

  def self.parse
    @list.scan(/\S*[@]\S*[.][a-zA-Z]*/).each do |email|
      if !@@all.include?(email)
        @@all << email
      end
    end
    @@all
  end

end