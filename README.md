![][license-badge]

<div align="center">
  <a href="http://github.com/oh-my-fish/oh-my-fish">
  <img width=90px  src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
  </a>
</div>
<br>

#  [_rbenv_](https://github.com/sstephenson/rbenv)

Ruby environment/version manager plugin for [Oh My Fish][omf-link].

## Install
> _Note_: You need to have `rbenv` installed.

```fish
$ omf install rbenv
```

## Configuration

If you have a custom rbenv root, you can add the following to your `~/.config/fish/init.fish` file before sourcing Oh My Fish.

```
set -gx RBENV_ROOT #path
```

# License

[MIT][mit] © [bpinto][author] et [al][contributors]


[mit]:            http://opensource.org/licenses/MIT
[author]:         http://github.com/bpinto
[contributors]:   https://github.com/oh-my-fish/plugin-rbenv/graphs/contributors
[omf-link]:       https://www.github.com/oh-my-fish/oh-my-fish

[license-badge]:  https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square
[travis-badge]:   http://img.shields.io/travis/oh-my-fish/plugin-rbenv.svg?style=flat-square
[travis-link]:    https://travis-ci.org/oh-my-fish/plugin-rbenv
