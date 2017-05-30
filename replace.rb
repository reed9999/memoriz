#!/c/Ruby23/bin/ruby.exe
# encoding: UTF-8
class Replacer
	class << self
  ORDER = ["eté", "aonu", "èêrish", "dlcm", "wfg", "ypbvkjxqz"]
    def broken_multi text
      rv=[] #redo this with #map
      ORDER.each do |to_replace|
        rv << replaced(text, to_replace)
      end
      rv
		end

    def multi text
      puts text
      ORDER.each do |to_replace|
        puts replaced(text, to_replace)
      end
		end
    def replaced text, to_replace
      text.tr! to_replace.downcase, '_'
      text.tr! to_replace.upcase, '_'
      text
    end
	end
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
verses.each do |v|
  Replacer.multi v
end