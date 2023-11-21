#mapeamento de caracteres para o Elder Futhark
ELDER_FUTHARK = {
  'a' => 'ᚨ', 'b' => 'ᛒ', 'c' => 'ᚲ',  
  'd' => 'ᛞ', 'e' => 'ᛖ', 'f' => 'ᚠ',
  'g' => 'ᚷ', 'h' => 'ᚺ', 'i' => 'ᛁ',
  'j' => 'ᛃ', 'k' => 'ᚲ', 'l' => 'ᛚ',
  'm' => 'ᛗ', 'n' => 'ᚾ', 'o' => 'ᛟ',
  'p' => 'ᛈ', 'q' => 'ᚲ', 'r' => 'ᚱ',
  's' => 'ᛋ', 't' => 'ᛏ', 'u' => 'ᚢ',
  'v' => 'ᚹ', 'w' => 'ᚹ', 'x' => 'ᛋ',
  'y' => 'ᛋ', 'z' => 'ᛉ', ' ' => ' ',
  'th' => 'ᚦ'
}

def texto_para_elder_futhark(texto, mapeamento)
  runas = ''
  i = 0

  while i < texto.length
    # Verifica se a substring de duas letras é 'th'
    if i < texto.length - 1 && mapeamento.key?(texto[i..i + 1])
      runas += mapeamento[texto[i..i + 1]]
      i += 2
    else
      runas += mapeamento[texto[i].downcase] || texto[i]
      i += 1
    end
  end

  runas
end

print "Digite o texto que você deseja converter para Elder Futhark: "
texto_original = gets.chomp

texto_em_elder_futhark = texto_para_elder_futhark(texto_original, ELDER_FUTHARK)

puts "Texto em Elder Futhark: #{texto_em_elder_futhark}"

