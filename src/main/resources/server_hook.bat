:: This is sample for a server side hook for code collaborator
:: This is an SVN pre-commit hook for every code change checked-in

:: Global variable defined as below
set --svn-repo-path=C:\Workspace\Eclipse\B_GWS_R1.0_BR2.0\Portals\GI_Web_Apps\Maven\qaTest
set --var-vp=Kolkata1
set --svn-look-exe=C:\Program Files\TortoiseSVN\bin\svnlook.exe
set --var-svn-repo-url="http://yyzsrc5001/svn/GWS/branches/B_GWS_R1.0_BR2.0/Portals/GI_Web_Apps/Maven/qaTest"
set --var-ccollab-url="http://yyzsrc5001.ana.corp.aviva.com:9080"
set --var-user=tcs_1979453
set --var-scm=subversion
set --var-participant-author=tcs_1979453
set --var-participant-reviewer=tcs_1973811

:: Either set the collab in classpath or go the executable location.
REM cd C:\SW\Collaborator Client

REM "ccollab.exe" --url http://yyzsrc5001.ana.corp.aviva.com:9080 --user tcs_1979453 --password Aviva123 --scm subversion --svn-repo-url http://yyzsrc5001/svn/GWS/branches/B_GWS_R1.0_BR2.0 --svn-look-exe "C:\Program Files\TortoiseSVN\bin\svnlook.exe" admin trigger create-review --review-id-regex "review:\s+(\d+)" %2

:: create a new review or use existing of based on the provided review-id.
:: If you supply the regular expression, the create-review hook will check for this
:: text in commit messages and automatically not create a new review if a non-canceled
:: review with that ID already exists. This allows some users to do pre-commit review
:: and others post-commit, and either way you know all code has been reviewed or at
:: least that a review of all code exists in the system.
ccollab --url %-var-ccollab-url% --user %-var-user% --password %-var-password% --scm %-var-scm% --svn-repo-url %-var-svn-repo-url% --svn-look-exe %-var-svn-look-exe% admin trigger create-review --review-id-regex "review:\s+(\d+)" %2

REM "C:\SW\Collaborator Client\ccollab.exe" --url http://yyzsrc5001.ana.corp.aviva.com:9080 --user tcs_1979453 --password Aviva123 --scm subversion --svn-repo-url http://yyzsrc5001/svn/GWS/branches/B_GWS_R1.0_BR2.0 --svn-look-exe "C:\Program Files\TortoiseSVN\bin\svnlook.exe" admin trigger create-review --review-id-regex "review:\s+(\d+)" %2