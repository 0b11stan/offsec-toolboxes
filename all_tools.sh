build() {
  podman build -t $1 --target $1 .
}

build kerbrute

alias cme='mkdir -p ~/.cme && podman run -it --rm -v ~/.cme:/root/.cme -v $PWD:/srv -w /srv byt3bl33d3r/crackmapexec'
alias kerbrute='podman run -it -v $PWD:/srv kerbrute'
