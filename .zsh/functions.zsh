function s() {
  if ! /usr/bin/byobu ls | grep -q "^b01:"; then
    /usr/bin/byobu new -s b01
  else
    /usr/bin/byobu attach -t b01
  fi
}

function activate() {
  envs=(".env" ".venv" ".virtualenv" "env" "venv" "virtualenv")
  found=false
  for dir in `find .* * -maxdepth 0 -type d`; do
    for env in $envs; do
        if [ "$env"  = "$dir" ]; then
            source $env/bin/activate
    	    found=true
	        break
        fi
    done
    if ($found); then
        break
    fi
  done

  if ! $found; then
    echo "No virtual environment found!"
  fi
}
