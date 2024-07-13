# Nushell Config File
#
# version = "0.92.2"


$env.config = {
    show_banner: false

    completions: {
        case_sensitive: false # set to true to enable case-sensitive completions
        quick: true    # set this to false to prevent auto-selecting completions when only one remains
        partial: true    # set this to false to prevent partial filling of the prompt
        algorithm: "prefix"    # prefix or fuzzy
        external: {
            enable: true # set to false to prevent nushell looking into $env.PATH to find more suggestions, `false` recommended for WSL users as this look up may be very slow
            max_results: 100 # setting it lower can improve completion performance at the cost of omitting some options
            completer: null # check 'carapace_completer' above as an example
        }
        use_ls_colors: true # set this to true to enable file/path/directory completions using LS_COLORS
    }

    # enables terminal shell integration. Off by default, as some terminals have issues with this.
    shell_integration: false

    # Per-plugin configuration. See https://www.nushell.sh/contributor-book/plugins.html#configuration.
    plugins: {}
}

source ($nu.config-path | path dirname | path join "config.keybindings.nu")

source ($nu.config-path | path dirname | path join "oh-my-posh.nu")
source ($nu.config-path | path dirname | path join "zoxide.nu")
