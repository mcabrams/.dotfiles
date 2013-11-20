" The following adds a potential replacement on '-' (ASCII 45) in PHP files.
" (To determine the ASCII code to use, :echo char2nr('-')).  The carriage
" return will be replaced by the original text.

  " autocmd FileType php let b:surround_45 = '<?php \r ?>'

" This can be used in a PHP file as in the following example.

  " Old text                  Command     New text ~
  " print 'Hello *world!'     yss-        <?php print 'Hello world!' ?>

  autocmd FileType ruby let b:surround_98 = "do\n  \r\nend"
