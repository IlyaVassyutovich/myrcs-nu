# myrcs-nu

## Oh My Posh

Instructions for oh-my-posh config generation [here](https://ohmyposh.dev/docs/installation/prompt)
tells you to put init-command to run every time on shell startup.

But it is not really required, since `oh-my-posh init nu` actually renders configuration into one of
`$nu.vendor-config-dirs`.

Just render this config once and be happy about.

And don't forget to point OMP to my proper config file with

```
### C:\Users\me\AppData\Roaming\nushell\vendor\autoload\init.XXXX.nu
# ...
$env.POSH_THEME = $nu.default-config-dir | path join "oh-my-posh.config.json"
# ...
```