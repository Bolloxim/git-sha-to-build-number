## Git Build and Deploy versioning helpers

**Git Sha# to Build Number** 

[shaToBuild.sh](https://github.com/Bolloxim/git-sha-to-build-number/blob/main/shaToBuild.sh) <sha#>

An example to get the current head as a build number

    shaToBuild.sh `git rev-parse HEAD`


This is useful for create a process.env.BUILD_VERSION during a build by calling the script to get the currrent build value. Alternatively if the build has the sha# already it can just be used directly.

**Build Number to Git Sha#**

[buildToSha.sh](https://github.com/Bolloxim/git-sha-to-build-number/blob/main/buildToSha.sh)  `<build number>`

This is where the real magic happens,  it takes the build number and calculates where the actual sha# is relative to current head. It does this by using the difference and skips accordingly

The return value is a git sha# which can then be used to look up the version that is referenced by the build.
additionally, the value returned is also already on the **clipboard** if on MAC (I should probably do win64 and linux versions)

**Author:** Andi Smithers, The Walt Disney Company
**Created:** Dec 2012
***open sourced for free use under the MIT license,  but please keep the author information within the files***
