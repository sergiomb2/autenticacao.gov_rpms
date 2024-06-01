fedpkg --release f39 srpm

mock -r fedora-39-x86_64  --rebuild pteid-mw-3.12.0-1.fc39.src.rpm -a /var/lib/mock/backup/fedora-39-x86_64/

copr-cli build sergiomb/pteid-mw pteid-mw-3.12.0-1.fc39.src.rpm

