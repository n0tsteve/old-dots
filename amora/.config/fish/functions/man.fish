# Defined via `source`
function man --wraps=tldr --description 'alias man=tldr'
  tldr $argv; 
end
