# Defined via `source`
function ls --wraps=lsd --description 'alias ls=lsd'
  lsd $argv; 
end
