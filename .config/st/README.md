To rebuild st, first update the PKGBUILD.template file to include the wanted patches.
Then run 'configst' found in the .scripts folder. This generates a PKGBUILD with the
correct hashes for each patch.
Afterwards, run 'makepkg -so' to retrieve the source files without building/installing
Make edits to config.def.h as necessary to resolve patch conflicts
Run 'makepkg -efi' to build and install
