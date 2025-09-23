fedpkg --release f39 srpm

mock -r fedora-39-x86_64  --rebuild pteid-mw-3.12.0-1.fc39.src.rpm -a /var/lib/mock/backup/fedora-39-x86_64/

copr-cli build sergiomb/pteid-mw pteid-mw-3.12.0-1.fc39.src.rpm

rpmdev-bumpspec -n 3.13.0  -c "Update to 3.13.0" pteid-mw.spec
spectool -g pteid-mw.spec
fedpkg --release f41 mockbuild --default-mock-resultdir -N -- -a https://download.copr.fedorainfracloud.org/results/sergiomb/pteid-mw/fedora-41-x86_64/
fedpkg copr-build sergiomb/pteid-mw

