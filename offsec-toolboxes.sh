build() {
  podman build -t $1 --target $1 .
}

build kerbrute
build ldaputils

alias cme='mkdir -p ~/.cme && podman run -it --rm -v ~/.cme:/root/.cme -v $PWD:/srv -w /srv byt3bl33d3r/crackmapexec'
alias kerbrute='podman run -it -v $PWD:/srv kerbrute'
alias ldapadd='podman run -it ldaputils ldapadd'
alias ldapcompare='podman run -it ldaputils ldapcompare'
alias ldapdelete='podman run -it ldaputils ldapdelete'
alias ldapexop='podman run -it ldaputils ldapexop'
alias ldapmodify='podman run -it ldaputils ldapmodify'
alias ldapmodrdn='podman run -it ldaputils ldapmodrdn'
alias ldappasswd='podman run -it ldaputils ldappasswd'
alias ldapsearch='podman run -it ldaputils ldapsearch'
alias ldapurl='podman run -it ldaputils ldapurl'
alias ldapwhoami='podman run -it ldaputils ldapwhoami'
