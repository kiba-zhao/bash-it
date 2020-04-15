cite about-plugin
about-plugin 'wifi helper functions'

function wifilist() {
  about 'list hosts defined in ssh config'
  echo '12313'
  group 'ssh'

  awk '$1 ~ /Host$/ {for (i=2; i<=NF; i++) print $i}' ~/.ssh/config
}
