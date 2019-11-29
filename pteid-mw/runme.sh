rpmbuild -bs pteid-mw.spec  --define '_sourcedir .' --define '_srcrpmdir .' && copr-cli build sergiomb/pteid-mw ./pteid-mw-3.0.20-2.fc30.src.rpm

