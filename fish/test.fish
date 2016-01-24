if [ $status = 0 ]
  set CMD "\[\e[33m\]^_^\[\e[0m\];"
else
  set CMD "\[\e[31m\]O_O\[\e[0m\];"
end
set END "\`[\u@\h:\w]\\$ "
set PS1 "$CMD"$END
