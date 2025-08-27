# hello.plugin.zsh
# A sample zcomet plugin that adds a hello_world function

hello_world() {
  echo "Hello, world from ${0:A:h}!"
}

# You can also define aliases
alias hw='hello_world'

# Add this plugin's completions to fpath
fpath+=("${0:A:h}/completions")
