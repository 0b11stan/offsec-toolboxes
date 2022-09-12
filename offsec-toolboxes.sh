build() {
  podman build -t $1 --target $1 .
}

build kerbrute
build ldaputils

alias cme='mkdir -p ~/.cme && podman run -it --rm -v ~/.cme:/root/.cme -v $PWD:/srv -w /srv byt3bl33d3r/crackmapexec'
alias kerbrute='podman run -it -v $PWD:/srv kerbrute'

# open ldap
alias ldapadd='podman run ldaputils ldapadd'
alias ldapcompare='podman run ldaputils ldapcompare'
alias ldapdelete='podman run ldaputils ldapdelete'
alias ldapexop='podman run ldaputils ldapexop'
alias ldapmodify='podman run ldaputils ldapmodify'
alias ldapmodrdn='podman run ldaputils ldapmodrdn'
alias ldappasswd='podman run ldaputils ldappasswd'
alias ldapsearch='podman run ldaputils ldapsearch'
alias ldapurl='podman run ldaputils ldapurl'
alias ldapwhoami='podman run ldaputils ldapwhoami'
