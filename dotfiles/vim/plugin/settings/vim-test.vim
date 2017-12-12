function! VagrantTransform(cmd) abort
  return 'docker-compose exec web '.a:cmd.' | less -d'
endfunction

let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
let g:test#transformation = 'vagrant'

let test#python#runner = 'djangotest'
let test#python#djangotest#options = '--keepdb'
