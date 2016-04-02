# SYNOPSIS
#   rbenv plugin for oh my fish

function init --on-event init_rbenv
  if not type -f -q rbenv; and set -q RBENV_ROOT; and not contains "$RBENV_ROOT/bin" $PATH
    set PATH $RBENV_ROOT/bin $PATH
  end

  if not type -f -q rbenv
    set_color $fish_color_error; echo "Please install 'rbenv' first, or set \$RBENV_ROOT!"; set_color normal; return 1
  end

  if command rbenv init - | grep --quiet "function"
    set -gx __RBENV_SUPPORTS_FISH true
    source (rbenv init - | psub)
  else
    if not set -q RBENV_ROOT
      set -x RBENV_ROOT "$HOME/.rbenv"
    end

    set PATH "$RBENV_ROOT/shims" $PATH
  end
end

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
