Git Build and Deploy versioning helpers


Git Sha# to Build Number 

shaToBuild.sh <sha#>

example to get the current head as a build number
shaToBuild.sh `git rev-parse HEAD`	


this is useful for create a process.env.BUILD_VERSION during a build


Author: Andi Smithers at The Walt Disney Company
Created: Dec 2012
open sourced for use but please keep the author information within the files if used
