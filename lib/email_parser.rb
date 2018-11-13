# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :list

  def initialize(emails)
    @list = emails
  end

  def parse
    parsed_list = @list.scan(/\S*[@]\S*[.][a-zA-Z]*/)
    final_list = []
    parsed_list.each do |email|
      final_list << email if final_list.count(email) < 1
    end
    final_list
  end

end
