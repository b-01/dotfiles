function s() {
  if ! /usr/bin/byobu ls | grep -q "^b01:"; then
    /usr/bin/byobu new -s b01
  else
    /usr/bin/byobu attach -t b01
  fi
}

function activate() {
  envs=(".env/" ".venv/" ".virtualenv/" "env/" "venv/" "virtualenv/")
  found=false
  for env in $envs; do
    for dir in `ls -Ad1 -- .*/ */`; do
      if [ "$env"  = "$dir" ]; then
        source $env/bin/activate
	found=true
	break
      fi
    done
  done

  if ! "$found"; then
    echo "No virtual environment found!"
  fi
}
