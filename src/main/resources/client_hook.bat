:: This is sample for a client side hook for code collaborator
:: This is an SVN pre-commit hook for every code change checked-in

:: Global variable defined as below
:: Set repository path e.g. --svn-repo-path=C:\Workspace\Eclipse\B_GWS_R1.0_BR2.0\Portals\GI_Web_Apps\Maven\qaTest
set --svn-repo-path=<codebase path>
:: Set subversion password e.g. --var-vp=password
set --var-vp=<password>
:: Set svnlook.exe e.g. --svn-look-exe=C:\Program Files\TortoiseSVN\bin\svnlook.exe
set --svn-look-exe=<svnlook.exe>
:: Set subversion user name e.g. --var-user=tcs_1979453
set --var-user=<username>

:: log into ccollab.
ccollab login  http://yyzsrc5001.ana.corp.aviva.com:9080 %--var-user% %--var-vp%
:: create a new review for every code change check-in to SVN.
ccollab addchanges new %--svn-repo-path%
:: log out from ccollab
ccollab logout
