TOOLBOXES_DOCKERFILE=https://raw.githubusercontent.com/0b11stan/offsec-toolboxes/main/Dockerfile

build() {
  curl -s $TOOLBOXES_DOCKERFILE | podman build -t $1 --target $1  -
}

alias cme='mkdir -p ~/.cme && podman run -it --rm -v ~/.cme:/root/.cme -v $PWD:/srv -w /srv byt3bl33d3r/crackmapexec'
alias kerbrute='build kerbrute; podman run -it -v $PWD:/srv kerbrute'

# open ldap
alias ldapadd='build ldaputils; podman run ldaputils ldapadd'
alias ldapcompare='build ldaputils; podman run ldaputils ldapcompare'
alias ldapdelete='build ldaputils; podman run ldaputils ldapdelete'
alias ldapexop='build ldaputils; podman run ldaputils ldapexop'
alias ldapmodify='build ldaputils; podman run ldaputils ldapmodify'
alias ldapmodrdn='build ldaputils; podman run ldaputils ldapmodrdn'
alias ldappasswd='build ldaputils; podman run ldaputils ldappasswd'
alias ldapsearch='build ldaputils; podman run ldaputils ldapsearch'
alias ldapurl='build ldaputils; podman run ldaputils ldapurl'
alias ldapwhoami='build ldaputils; podman run ldaputils ldapwhoami'
