boomv1() {
  tempfile=$(mktemp)
  eval "$@" 2>&1 | tee $tempfile
  if [ "${PIPESTATUS[0]}" -eq 0 ]; then 
    daboom s $tempfile
  else 
    daboom f $tempfile
  fi
}

boom() {
  tempfile=$(mktemp)
  eval "$@" 2>&1 | tee $tempfile && daboom "${PIPESTATUS[0]}" $tempfile
}
