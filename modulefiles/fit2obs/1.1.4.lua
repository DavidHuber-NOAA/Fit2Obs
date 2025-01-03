help([[
Sets environment variables for fit2obs pacakage
]])

local pkgName = myModuleName()
local pkgVersion = myModuleVersion()
local pkgNameVer = myModuleFullName()

conflict(pkgName)

local base = "/lfs/h2/emc/global/noscrub/david.huber/glopara_ss/git/Fit2Obs/v1.1.4"

setenv("HOMEfit2obs", base)
setenv("EXECfit2obs", pathJoin(base, "exec"))
setenv("FIXfit2obs", pathJoin(base, "fix"))
setenv("SCRIPTSfit2obs", pathJoin(base, "scripts"))
setenv("USHfit2obs", pathJoin(base, "ush"))

-- retain cfs named variables till the scripts get updated.
setenv("HOMEcfs", base)
setenv("EXECcfs", pathJoin(base, "exec"))
setenv("FIXcfs", pathJoin(base, "fix"))
setenv("SCRIPTScfs", pathJoin(base, "scripts"))
setenv("USHcfs", pathJoin(base, "ush"))

whatis("Name: ".. pkgName)
whatis("Version: " .. pkgVersion)
whatis("Category: Utility")
whatis("Description: This module sets the environment variables for fit2obs package")
