rpmbuild -bs pteid-mw.spec  --define '_sourcedir .' --define '_srcrpmdir .' && copr-cli build sergiomb/pteid-mw ./pteid-mw-3.0.21-1.fc30.src.rpm

