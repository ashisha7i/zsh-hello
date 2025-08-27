# hello.plugin.zsh
# A sample zcomet plugin that adds a hello_world function

hello_world() {
  echo "Hello, world from ${0:A:h}!"
}

# You can also define aliases
alias hw='hello_world'

# Add this plugin's completions to fpath
fpath+=("${0:A:h}/completions")

# Initialize completions if not already loaded
if ! typeset -f compinit >/dev/null; then
  autoload -Uz compinit
fi

# Run compinit only if completion system not set up
if ! whence -w _complete >/dev/null 2>&1; then
  compinit -i
fi
