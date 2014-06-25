svncdiff()
{
  svn diff "${@}" | colordiff | less -R
}
