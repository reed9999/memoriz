#!/c/Ruby23/bin/ruby.exe
# encoding: UTF-8
class Replacer
	class << self
  $id = 0
  ORDER = ["eté", "aonu", "èêrish", "dlcm", "wfg", "ypbvkjxqz"]
    def single_line text
      full_text = text.chomp
      rv = ORDER.collect do |to_replace|
        text = replaced(text.chomp, to_replace)
        text.clone
      end
      rv = [$id, full_text] << rv
      puts rv.join "\t"
      $id += 1
      rv
		end
    def replaced text, to_replace
      text.tr! to_replace.downcase, '_'
      text.tr! to_replace.upcase, '_'
      text
    end
	end
end
input = File.open("input.txt", :encoding => "utf-8" ) do |f|
  f.readlines
end
input.each do |v|
  Replacer.single_line v
end

