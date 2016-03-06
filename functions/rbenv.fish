function rbenv
  if set -q __RBENV_SUPPORTS_FISH
    command rbenv $argv
  else
    set command $argv[1]
    set -e argv[1]

    switch "$command"
    case rehash shell
      eval (rbenv "sh-$command" $argv)
    case '*'
      command rbenv "$command" $argv
    end
  end
end
