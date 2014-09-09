REM @if not exist "%HOME%" @set HOME=%USERPROFILE%
@set HOME=%USERPROFILE%

IF EXIST "%HOME%\Dropbox\" (
  @set APP_DIR=%HOME%\Dropbox\.vimfiles
) ELSE (
  @set APP_DIR=%HOME%\.vimfiles
)

call mklink "%HOME%\.vimrc" "%APP_DIR%\.vimrc"
call mklink "%HOME%\_vimrc" "%APP_DIR%\.vimrc"
call mklink "%HOME%\.vimrc.fork" "%APP_DIR%\.vimrc.fork"
call mklink "%HOME%\.vimrc.bundles" "%APP_DIR%\.vimrc.bundles"
call mklink "%HOME%\.vimrc.bundles.fork" "%APP_DIR%\.vimrc.bundles.fork"
call mklink "%HOME%\.vimrc.before" "%APP_DIR%\.vimrc.before"
call mklink "%HOME%\.vimrc.before.fork" "%APP_DIR%\.vimrc.before.fork"
call mklink /J "%HOME%\.vim" "%APP_DIR%\.vim"
