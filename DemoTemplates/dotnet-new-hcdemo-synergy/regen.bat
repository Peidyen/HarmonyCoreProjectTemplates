@echo off
pushd %~dp0
setlocal
set SolutionDir=%~dp0

rem ================================================================================================================================
rem Specify the names of the projects to generate code into:

set ServicesProject=Services
set HostProject=Services.Host
set TestProject=Services.Test

rem ================================================================================================================================
rem Specify the names of the repository structures to generate code from:

set DATA_STRUCTURES=CUSTOMERS ITEMS ORDERS ORDER_ITEMS VENDORS
set FILE_STRUCTURES=%DATA_STRUCTURES%

rem DATA_STRUCTURES Is a list all of structures that you wish to generate models and
rem                 controllers for. In other words it declares all of the "entities"
rem                 that are being represented and exposed by the environment.
rem
rem FILE_STRUCTURES If you don't have multi-record format files then this should be the
rem                 same as DATA_STRUCTURES. But if you do then FILE_STRUCTURES should
rem                 only list ONE of the structures assigned to each file, so this list
rem                 will be a subset of DATA_STRUCTURES.

rem ================================================================================================================================
rem Specify optional "system parameter file" structure

set PARAMSTR=

rem In the sammple environment the system parameter file is a relative file that contains
rem "next available record number" data for use in conjunction with POST (create with automated
rem primary key assignment) operaitons. Naming the structure associated with that file here
rem ensures that a copy of that file will be made available in the sample self-host environment
rem along with other data files in the sample data folder. This mechanism will require customization
rem for use in other environments.

rem ================================================================================================================================
rem Comment or uncomment the following lines to enable or disable optional features:

set ENABLE_SELF_HOST_GENERATION=YES
set ENABLE_CREATE_TEST_FILES=-define ENABLE_CREATE_TEST_FILES
rem set ENABLE_SWAGGER_DOCS=-define ENABLE_SWAGGER_DOCS
rem set ENABLE_POSTMAN_TESTS=YES
rem set ENABLE_ALTERNATE_KEYS=-define ENABLE_ALTERNATE_KEYS
rem set ENABLE_COUNT=-define ENABLE_COUNT
rem set ENABLE_PROPERTY_ENDPOINTS=-define ENABLE_PROPERTY_ENDPOINTS
rem set ENABLE_SELECT=-define ENABLE_SELECT
rem set ENABLE_FILTER=-define ENABLE_FILTER
rem set ENABLE_ORDERBY=-define ENABLE_ORDERBY
rem set ENABLE_TOP=-define ENABLE_TOP
rem set ENABLE_SKIP=-define ENABLE_SKIP
rem set ENABLE_RELATIONS=-define ENABLE_RELATIONS
rem set ENABLE_PUT=-define ENABLE_PUT
rem set ENABLE_POST=-define ENABLE_POST
rem set ENABLE_PATCH=-define ENABLE_PATCH
rem set ENABLE_DELETE=-define ENABLE_DELETE
rem set ENABLE_AUTHENTICATION=-define ENABLE_AUTHENTICATION
rem set ENABLE_UNIT_TEST_GENERATION=YES
rem set ENABLE_CASE_SENSITIVE_URL=-define ENABLE_CASE_SENSITIVE_URL
rem set ENABLE_CORS=-define ENABLE_CORS
rem set ENABLE_IIS_SUPPORT=-define ENABLE_IIS_SUPPORT


if not "NONE%ENABLE_SELECT%%ENABLE_FILTER%%ENABLE_ORDERBY%%ENABLE_TOP%%ENABLE_SKIP%%ENABLE_RELATIONS%"=="NONE" (
  set PARAM_OPTIONS_PRESENT=-define PARAM_OPTIONS_PRESENT
)

rem ================================================================================================================================
rem Configure standard command line options and the CodeGen environment

set NOREPLACEOPTS=-e -lf -u %SolutionDir%UserDefinedTokens.tkn %ENABLE_AUTHENTICATION% %ENABLE_PROPERTY_ENDPOINTS% %ENABLE_CASE_SENSITIVE_URL% %ENABLE_CREATE_TEST_FILES% %ENABLE_CORS% %ENABLE_IIS_SUPPORT% %ENABLE_DELETE% %ENABLE_PUT% %ENABLE_POST% %ENABLE_PATCH% %ENABLE_ALTERNATE_KEYS% %ENABLE_SWAGGER_DOCS% %ENABLE_RELATIONS% %ENABLE_SELECT% %ENABLE_FILTER% %ENABLE_ORDERBY% %ENABLE_COUNT% %ENABLE_TOP% %ENABLE_SKIP% %PARAM_OPTIONS_PRESENT% -i %SolutionDir%Templates -rps %RPSMFIL% %RPSTFIL%
set STDOPTS=%NOREPLACEOPTS% -r

rem ================================================================================
rem Generate a Web API / OData CRUD environment

rem Generate model, metadata and controller classes
codegen -s %DATA_STRUCTURES% ^
        -t ODataModel ODataMetaData ODataController ^
        -o %SolutionDir%%ServicesProject% -tf ^
        -n %ServicesProject% ^
           %STDOPTS%
if ERRORLEVEL 1 goto error

rem Generate the DbContext and EdmBuilder and Startup classes
codegen -s %DATA_STRUCTURES% -ms ^
        -t ODataDbContext ODataEdmBuilder ODataStartup ^
        -o %SolutionDir%%ServicesProject% ^
        -n %ServicesProject% ^
           %STDOPTS%
if ERRORLEVEL 1 goto error

rem ================================================================================
rem Self hosting

if DEFINED ENABLE_SELF_HOST_GENERATION (
  codegen -s %FILE_STRUCTURES% %PARAMSTR% -ms ^
          -t ODataStandAloneSelfHost ^
          -o %SolutionDir%%HostProject% ^
          -n %HostProject% ^
             %STDOPTS%
  if ERRORLEVEL 1 goto error
)

rem ================================================================================
rem Swagger documentation and Postman tests

rem Generate a Swagger file
if DEFINED ENABLE_SWAGGER_DOCS (
  codegen -s %DATA_STRUCTURES% -ms ^
          -t ODataSwaggerYaml ^
          -o %SolutionDir%%ServicesProject%\wwwroot ^
             %STDOPTS%
  if ERRORLEVEL 1 goto error
)

rem Generate Postman Tests
if DEFINED ENABLE_POSTMAN_TESTS (
  codegen -s %DATA_STRUCTURES% -ms ^
          -t ODataPostManTests ^
          -o %SolutionDir% ^
             %STDOPTS%
  if ERRORLEVEL 1 goto error
)

rem ================================================================================
rem Unit testing project

if DEFINED ENABLE_UNIT_TEST_GENERATION (

  rem Generate OData client model, data loader and unit test classes
  codegen -s %DATA_STRUCTURES% ^
          -t ODataClientModel ODataTestDataLoader ODataUnitTests ^
          -o %SolutionDir%%TestProject% -tf ^
          -n %TestProject% ^
             %STDOPTS%
  if ERRORLEVEL 1 goto error

  rem Generate data generator classes; one time, not replaced
  codegen -s %DATA_STRUCTURES% ^
          -t ODataTestDataGenerator ^
          -o %SolutionDir%%TestProject% -tf ^
          -n %TestProject% %NOREPLACEOPTS%
  if ERRORLEVEL 1 goto error

  rem Generate the test environment
  codegen -s %FILE_STRUCTURES% %PARAMSTR% -ms ^
          -t ODataTestEnvironment ^
          -o %SolutionDir%%TestProject% ^
          -n %TestProject% ^
             %STDOPTS%
  if ERRORLEVEL 1 goto error

  rem Generate the unit test environment class, and the self-hosting program
  codegen -s %FILE_STRUCTURES% -ms ^
          -t ODataUnitTestEnvironment ODataSelfHost ^
          -o %SolutionDir%%TestProject% ^
          -n %TestProject% ^
             %STDOPTS%
  if ERRORLEVEL 1 goto error

  rem Generate the unit test constants properties classes
  codegen -s %DATA_STRUCTURES% -ms ^
          -t ODataTestConstantsProperties ^
          -o %SolutionDir%%TestProject% ^
          -n %TestProject% ^
             %STDOPTS%
  if ERRORLEVEL 1 goto error

  rem Generate unit test constants values class; one time, not replaced
  codegen -s %DATA_STRUCTURES% -ms ^
          -t ODataTestConstantsValues ^
          -o %SolutionDir%%TestProject% ^
          -n %TestProject% ^
             %NOREPLACEOPTS%
  if ERRORLEVEL 1 goto error
)

rem ================================================================================

echo.
echo DONE!
echo.
goto done

:error
echo *** CODE GENERATION INCOMPLETE ***

:done
endlocal
popd