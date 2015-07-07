function recursive_replace 
  set arg_count (count $argv)
  if [ $arg_count != 2 ]
    echo "expecting two arguments."
    return
  end

  echo replacing $argv[1] with $argv[2] ...
  find . -type f -print | egrep -v '.git' | xargs sed -i "s/$argv[1]/$argv[2]/g"
  echo finished!
end

function rr
  recursive_replace $argv
end
