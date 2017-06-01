#!/c/Ruby23/bin/ruby.exe
# encoding: UTF-8
class Replacer
	class << self
  ORDER = ["eté", "aonu", "èêrish", "dlcm", "wfg", "ypbvkjxqz"]
    def single_line text
      puts text
      rv = ORDER.collect do |to_replace|
        replaced(text.chomp, to_replace).clone
      end
      puts rv.join "\t"
      rv
		end
    def replaced text, to_replace
      text.tr! to_replace.downcase, '_'
      text.tr! to_replace.upcase, '_'
      text
    end
	end
end
input = File.open("input.txt") do |f|
  f.readlines
end
input.each do |v|
  Replacer.single_line v
end

verses = [
"6 lui qui est de condition divine,
il n'a pas regardé son égalité avec Dieu
comme un butin à préserver,",
"7 mais il s'est dépouillé lui-même
en prenant une condition de serviteur,
en devenant semblable aux êtres humains.
Reconnu comme un simple homme,",
"8 il s'est humilié lui-même
en faisant preuve d’obéissance jusqu'à la mort,
même la mort sur la croix.",
"9 C'est aussi pourquoi Dieu l'a élevé à la plus haute place
et lui a donné le nom
qui est au-dessus de tout nom",
"10 afin qu'au nom de Jésus
chacun plie le genou
dans le ciel, sur la terre et sous la terre",
"11 et que toute langue reconnaisse
que Jésus-Christ est le Seigneur,
à la gloire de Dieu le Père.",
]
