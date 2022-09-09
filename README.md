# My offensive security tools, container isolated

## Build

```bash
podman build -t $TOOL -f $TOOL.dockerfile
```

## Run

```bash
podman run -it -v $PWD:/srv $TOOL --help
```

## All tools

Source the `all_tools.sh` script to include all tools into your shell.

* [cme](https://github.com/Porchetta-Industries/CrackMapExec) (use the [online image](https://hub.docker.com/r/byt3bl33d3r/crackmapexec))
* [kerbrute](https://github.com/TarlogicSecurity/kerbrute)
