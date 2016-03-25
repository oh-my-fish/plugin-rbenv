# SYNOPSIS
#   rbenv plugin for oh my fish

if not type -fq rbenv; and set -q RBENV_ROOT; and not contains "$RBENV_ROOT/bin" $PATH
  set PATH $RBENV_ROOT/bin $PATH
end

if type -q rbenv
  if command rbenv init - | grep --quiet "function"
    set -gx __RBENV_SUPPORTS_FISH true
    source (rbenv init - | psub)
  else
    if not set -q RBENV_ROOT
      set -x RBENV_ROOT "$HOME/.rbenv"
    end

    if not contains $RBENV_ROOT/shims $PATH
      set PATH $RBENV_ROOT/shims $PATH
    end
  end
else
  echo "Please install 'rbenv' first, or set \$RBENV_ROOT!"
end