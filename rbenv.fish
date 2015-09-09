# SYNOPSIS
#   rbenv plugin for oh my fish

function init --on-event init_rbenv
  if not available rbenv
    echo "Please install 'rbenv' first!"; return 1
  end

  if status --is-interactive
    if rbenv init - | grep --quiet "function"
      source (rbenv init - | psub)
    else
      if not set -q RBENV_ROOT
        set -x RBENV_ROOT "$HOME/.rbenv"
      end

      set PATH "$RBENV_ROOT/shims" $PATH

      function rbenv
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
  end
end
